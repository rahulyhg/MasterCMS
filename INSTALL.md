![Master logo](http://i.imgur.com/DajNToP.png)

# Instaling Manual

### Images manual:
[Open](http://imgur.com/a/LpUHv)

### Video manual:
[Open](https://www.youtube.com/watch?v=N-KCqX5e844)

## Requirements
* PHP 7.0.0
* Apache Server
* Xampp [Windows](https://www.apachefriends.org/xampp-files/7.1.4/xampp-win32-7.1.4-0-VC14-installer.exe) | [Linux](https://www.apachefriends.org/xampp-files/7.1.4/xampp-linux-x64-7.1.4-0-installer.run), IIS or Hosting

### Writed manual:
1. Download the MasterCMS ZIP from the Repo.
1. Extract the contest of the "*master*" directory on you "*wwwroot*" or "*htdocs*".
1. Extract the "*Code*" folder to the "*xampp*" or "*Inetpub*" directory.
1. Go to `Code\src\MasterCMS\Config.php`, `Code\src\MasterCMS\Connection.php`, `Code\src\MasterCMS\SMTP.php` and config.
1. In `Code\src\MasterCMS\Config.php` find "*SUPER_USERS*" and put you on the Super Users list.
1. Give writing perms to the "*xampp*" or "*Inetpub*" directory (Only on first instalation). [How To](http://imgur.com/a/gpQR9)
1. Go to your MySQL configuration file "*my.ini*" and add this text line `max_connections = 5000`(Only on first instalation). [How To](http://imgur.com/a/tyUFI)
1. Go to your PHP configuration file "*php.ini*" and change `upload_max_filesize=2M` to `upload_max_filesize=20M` (Only on first instalation). [How To](http://imgur.com/a/7sPxF)
1. Import an emulator DB and import "*db.sql*" or Import "*plus.sql*" for Plus Emulator.
* Enjoy it!
