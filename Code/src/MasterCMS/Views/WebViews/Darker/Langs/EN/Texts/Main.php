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
   
	namespace MasterCMS\Views\WebViews\Darker\Langs\EN\Texts;

	use MasterCMS\Config\Config;	

	class Main {

		public $format = [
			'error_start' => '<script>$(document).ready(function() {alertify.error("',
			'error_end' => '"); });</script>',
			'success_start' => '<script>$(document).ready(function() {alertify.success("',
			'success_end' => '"); });</script>'
		];

		public $texts = array(
			'titles' => [
				'index' => 'The Best Hotel in the world',
				'me' => '{@user_username}',
				'maintenance' => 'Maintenance',
				'register' => 'Registry',
				'news' => 'News',
				'community' => 'Community',
				'account_settings' => 'Account settings',
				'adblock' => 'Disable AdBlock',
				'profiles' => 'Profile of {@user_username}',
				'tops' => 'Hotel Tops',
				'logout' => 'Sign off',
				'404' => 'Error 404',
				'deleted_account' => 'Account deleted',
				'cookies' => 'Cookies policy',
				'terms' => 'Terms and Conditions',
				'mastercms' => 'Credits of MasterCMS',
				'team' => 'Administrative team',
				'client' => 'Fun inside the hotel',
				'client_pin' => 'Security Pin',
				'client_pin_create' => 'Create client security code',
				'theme_info' => 'Information on the theme {@theme_name}',
				'flash' => 'You must activate Flash'
			],

			'mails' => [
				'account_created' => 'Account Created',
				'password_changed' => 'Password Changed',
				'mail_changed' => 'Changed email',
				'account_deleted' => 'Account Deleted'
			],

			'forms' => [
				'login' => [
					'name' => 'login',
					'values' => [
						'empty' => 'Dont\'t leave blanks',
					],
				],

				'comment' => [
					'name' => 'comment',
					'values' => [
						'empty' => 'Dont\'t leave blanks',
						'empty_new' => 'You must choose a new',
						'wait' => 'You need to wait that other comments',
						'success' => 'Comment published',
						'database' => 'An error has occurred in the database',
					],
				],
			]
		);
	}

?>