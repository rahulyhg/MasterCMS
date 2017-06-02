<main id="lg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h3>Top Credits</h3>
                <div class="Box">
                    <div class="boxContent">

                        <?php



                            $users_Query = $this->con->query('SELECT * FROM users HAVING credits > 0 ORDER BY credits DESC LIMIT 4');

                            if ($this->con->num_rows($users_Query) == 0) {

                        ?>

                                <div class="comboPlate">
                                    <div class="comboUser">
                                        <a href="{@url}/web/profile/1"><div class="comboAvatar <?php if ($select['online'] == 1) { echo 'comboOnline'; } ?>"><div class="comboBadge" style="background: url('{@badges_cdn}/<?php echo $selectRank['badge']; ?>.gif');"> </div><div class="comboImage float-left" style="background: url('{@habbo_img}<?php echo $select['look']; ?>&gesture=sml&size=b');"> </div></div></a>
                                        <span>
                                            <h4>No one has credit yet</h4>
                                        </span>                                
                                    </div>
                                </div>

                        <?php

                            }
                            else{

                        ?>

                            <div class="comboPlate">

                        <?php

                                for ($i=1; $i <= 4; $i++) { 

                                    $user = mysqli_fetch_assoc($users_Query);

                                    $badge_Slot = $this->con->query('SELECT * FROM user_badges WHERE user_id = "' . $user['id'] . '" AND badge_slot = "1" ');
                                    $badge = mysqli_fetch_assoc($badge_Slot);

                        ?>
                                
                                    <div class="comboUser">
                                        <a href="{@url}/web/profile/<?php echo $user['id']; ?>"><div class="comboAvatar <?php if ($select['online'] == 1) { echo 'comboOnline'; } ?>"><div class="comboBadge" style="background: url('{@badges_cdn}/<?php echo $badge['badge_id']; ?>.gif');"> </div><div class="comboImage float-left" style="background: url('{@habbo_img}<?php echo $user['look']; ?>&gesture=sml&size=b');"> </div></div></a>
                                        <span>
                                            <h6><?php if($user['username'] == NULL){ echo 'Empty post'; } else { echo $user['username']; } ?></h6>
                                            <p><?php if($user['username'] == NULL){ echo 'What are you waiting for to get the job '. $i .'!?'; } else { echo 'I have ' . $user['credits'] . ' credits!'; } ?></p>
                                            <p>Post #<?php echo $i; ?></p>
                                        </span>                                
                                    </div>
                                
                        <?php } ?>

                        </div>

                        <?php } ?>

                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <h3>Top Diamonds</h3>
                <div class="Box">
                    <div class="boxContent">

                        <?php

                            $users_Query = $this->con->query('SELECT * FROM users HAVING vip_points > 0 ORDER BY vip_points DESC LIMIT 4');

                            if ($this->con->num_rows($users_Query) == 0) {

                        ?>

                                <div class="comboPlate">
                                    <div class="comboUser">
                                        <a href="{@url}/web/profile/1"><div class="comboAvatar <?php if ($select['online'] == 1) { echo 'comboOnline'; } ?>"><div class="comboBadge" style="background: url('{@badges_cdn}/<?php echo $selectRank['badge']; ?>.gif');"> </div><div class="comboImage float-left" style="background: url('{@habbo_img}<?php echo $select['look']; ?>&gesture=sml&size=b');"> </div></div></a>
                                        <span>
                                            <h4>No one has Diamonds yet</h4>
                                        </span>                                
                                    </div>
                                </div>

                        <?php

                            }
                            else{

                        ?>

                            <div class="comboPlate">

                        <?php

                                for ($i=1; $i <= 4; $i++) { 

                                    $user = mysqli_fetch_assoc($users_Query);

                                    $badge_Slot = $this->con->query('SELECT * FROM user_badges WHERE user_id = "' . $user['id'] . '" AND badge_slot = "1" ');
                                    $badge = mysqli_fetch_assoc($badge_Slot);

                        ?>
                                
                                    <div class="comboUser">
                                        <a href="{@url}/web/profile/<?php echo $user['id']; ?>"><div class="comboAvatar <?php if ($select['online'] == 1) { echo 'comboOnline'; } ?>"><div class="comboBadge" style="background: url('{@badges_cdn}/<?php echo $badge['badge_id']; ?>.gif');"> </div><div class="comboImage float-left" style="background: url('{@habbo_img}<?php echo $user['look']; ?>&gesture=sml&size=b');"> </div></div></a>
                                        <span>
                                            <h6><?php if($user['username'] == NULL){ echo 'Empty post'; } else { echo $user['username']; } ?></h6>
                                            <p><?php if($user['username'] == NULL){ echo '¿¡What are you waiting for to get the job '. $i .'!?'; } else { echo 'I have ' . $user['vip_points'] . ' diamonds!'; } ?></p>
                                            <p>Post #<?php echo $i; ?></p>
                                        </span>                                
                                    </div>
                                
                        <?php } ?>

                        </div>

                        <?php } ?>

                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <h3>Top Duckets</h3>
                <div class="Box">
                    <div class="boxContent">

                        <?php

                            $users_Query = $this->con->query('SELECT * FROM users HAVING activity_points > 0 ORDER BY activity_points DESC LIMIT 4');

                            if ($this->con->num_rows($users_Query) == 0) {

                        ?>

                                <div class="comboPlate">
                                    <div class="comboUser">
                                        <a href="{@url}/web/profile/1"><div class="comboAvatar <?php if ($select['online'] == 1) { echo 'comboOnline'; } ?>"><div class="comboBadge" style="background: url('{@badges_cdn}/<?php echo $selectRank['badge']; ?>.gif');"> </div><div class="comboImage float-left" style="background: url('{@habbo_img}<?php echo $select['look']; ?>&gesture=sml&size=b');"> </div></div></a>
                                        <span>
                                            <h4>No one has Duckets yet</h4>
                                        </span>                                
                                    </div>
                                </div>

                        <?php

                            }
                            else{

                        ?>

                            <div class="comboPlate">

                        <?php

                                for ($i=1; $i <= 4; $i++) { 

                                    $user = mysqli_fetch_assoc($users_Query);

                                    $badge_Slot = $this->con->query('SELECT * FROM user_badges WHERE user_id = "' . $user['id'] . '" AND badge_slot = "1" ');
                                    $badge = mysqli_fetch_assoc($badge_Slot);

                        ?>
                                
                                    <div class="comboUser">
                                        <a href="{@url}/web/profile/<?php echo $user['id']; ?>"><div class="comboAvatar <?php if ($select['online'] == 1) { echo 'comboOnline'; } ?>"><div class="comboBadge" style="background: url('{@badges_cdn}/<?php echo $badge['badge_id']; ?>.gif');"> </div><div class="comboImage float-left" style="background: url('{@habbo_img}<?php echo $user['look']; ?>&gesture=sml&size=b');"> </div></div></a>
                                        <span>
                                            <h6><?php if($user['username'] == NULL){ echo 'Empty post'; } else { echo $user['username']; } ?></h6>
                                            <p><?php if($user['username'] == NULL){ echo '¿¡What are you waiting for to get the job '. $i .'!?'; } else { echo 'I have ' . $user['activity_points'] . ' duckets!'; } ?></p>
                                            <p>Post #<?php echo $i; ?></p>
                                        </span>                                
                                    </div>
                                
                        <?php } ?>

                        </div>

                        <?php } ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</main>