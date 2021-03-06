<?php
    
    /**
     *
     *   MasterCMS
     *
     *   Copyright (c) 2017 MasterCMS
     *
     *   @author <Denzel Code>
     *   -------------------------------------------------------------------------
     *   Licensed under the Apache License, Version 2.0 (the "License");
     *   you may not use this file except in compliance with the License.
     *   You may obtain a copy of the License at
     *
     *       http://www.apache.org/licenses/LICENSE-2.0
     *
     *   Unless required by applicable law or agreed to in writing, software
     *   distributed under the License is distributed on an "AS IS" BASIS,
     *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
     *   See the License for the specific language governing permissions and
     *   limitations under the License.
     *   -------------------------------------------------------------------------
    */
   
    namespace MasterCMS\Models;

    use MasterCMS\Config\{Config, Connection};

    class MUS {

        private $con;
        private $config;
        private $sessions;
        private $host;
        private $port;
        private $status;
        private $response;

        public function __construct()
        {
            $this->con = new Connection();
            $this->config = new Config();
            $this->sessions = new Sessions();
            $this->host = $this->config->select['MUS']['HOST'];
            $this->port = $this->config->select['MUS']['PORT'];
            $this->status = $this->config->select['MUS']['STATUS'];
        }

        public function send($command, array $data = [])
        {
            if ($this->status) {
                $socket = @socket_create(AF_INET, SOCK_STREAM, getprotobyname('tcp'));
                @socket_connect($socket, $this->host, $this->port);
                $musData = $command;
                if (!empty($data)) {
                    if (count($data) == 1) {
                        foreach ($data as $key => $value) {
                            $musData .= chr(1) . $value;
                        }
                    } else {
                        foreach ($data as $key => $value) {
                            if ($key == 0 || $key == 1) {
                                $musData .= chr(1) . $value;
                            } else {
                                $musData .= ' ' . $value;
                            }
                        }
                    }
                } else {
                    $musData .= chr(1) . '';
                }
                $send = @socket_send($socket, $musData, strlen($musData), MSG_DONTROUTE);
                @socket_close($socket);

                if (!$send) {
                    return false;
                } else {
                    return true;
                }
            } else {
                return false;
            }
        }

        public function check()
        {
            if ($this->status) {
                $socket = @socket_create(AF_INET, SOCK_STREAM, getprotobyname('tcp'));
                $connect = @socket_connect($socket, $this->host, $this->port);
                if (!$connect) {
                    return false;
                } else {
                    return true;
                }
                @socket_close($socket);
            } else {
                return false;
            }
        }

        public function getResponse()
        {
            return $this->response;
        }

        public function __destruct()
        {
            $this->con->close();
        }
    }

?>