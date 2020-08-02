# LFTP Deploy

This action uses a docker container and LFTP to move files to another area

## Inputs

### `ftp_host`
The host name or URL of the server you wish to FTP to

### `ftp_port` (optional)
The port which is to be used by FTP (default: `21`)

### `ftp_username`
The username for the FTP account

### `ftp_password`
The password for the FTP account

### `local_source_dir`
The directory to be copied

### `dist_target_dir`
The remote folder

### `delete` (optional)
Delete files before FTP begins (default: `false`)

### `exclude` (optional)
Ignore file(s) and folder(s) (default: ``)

### `disable_ssl_certificate_verification` (optional)
Disables validation of SSL certificates (default: `true`)
