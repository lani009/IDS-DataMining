# IDS Dataset

## 1. Dataset Parameter

| parameter                   | type   | explanation                                                                                |
| --------------------------- | ------ | ------------------------------------------------------------------------------------------ |
| duration                    | int    | length (number of seconds) of the connection                                               |
| protocol_type               | object | type of the protocol, e.b. tcp, udp, ect.                                                  |
| service                     | object | network service on the destination, e.g. http, telnet, etc.                                |
| flag                        | object | normal or error statue of the connection                                                   |
| src_bytes                   | int    | number of data bytes from source to destination                                            |
| dst_bytes                   | int    | number of data bytes from destination to source                                            |
| land                        | int    | 1 if connection is from/to the same host/port; 0 otherwise                                 |
| wrong_fragment              | int    | number of "wrong" fragments                                                                |
| urgent                      | int    | number of uggent packets                                                                   |
| hot                         | int    | number of "hot" indicators                                                                 |
| num_failed_logins           | int    | number of failed login attempts                                                            |
| logged_in                   | int    | 1 if successfully logged in; 0 otherwise                                                   |
| num_compromised             | int    | number of "compromised" conditions                                                         |
| root_shell                  | int    | 1 if root shell is obtained; 0 otherwise                                                   |
| su_attempted                | int    | 1 if "su root" command attempted; 0 otherwise                                              |
| num_root                    | int    | number of "root" accesses                                                                  |
| num_file_creations          | int    | number of file creation operations                                                         |
| num_shells                  | int    | number of shell prompts                                                                    |
| num_access_files            | int    | number of operations on access control files                                               |
| num_outbound_cmds           | int    | number of outbound commands in an ftp session                                              |
| is_host_login               | int    | 1 if the login belongs to the "hot" list; 0 otherwise                                      |
| is_guest_login              | int    | 1 if the login is a "guest" login; 0 otherwise                                             |
| count                       | int    | number of connections to the same host as the current connection in the past two seconds   |
| srv_count                   | int    | number of connection to the same service as the current connection in the pase two seconds |
| serror_rate                 | float  | % of connections that have "SYN" errors                                                    |
| srv_serror_rate             | float  | % of connections that have "SYN" errors                                                    |
| rerror_rate                 | float  | % of connections that have "REJ" errors                                                    |
| srv_rerror_rate             | float  | % of connections that have "REJ" errors                                                    |
| same_srv_rate               | float  | % of connections to the same service                                                       |
| diff_srv_rate               | float  | % of connections to the same services                                                      |
| srv_diff_host_rate          | float  | % of connections to different hosts                                                        |
| dst_host_count              | int    | number of connections                                                                      |
| dst_host_srv_count          | int    | number of connections                                                                      |
| dst_host_same_srv_rate      | float  | no information                                                                             |
| dst_host_diff_srv_rate      | float  | no information                                                                             |
| dst_host_same_src_port_rate | float  | no information                                                                             |
| dst_host_srv_diff_host_rate | float  | no information                                                                             |
| dst_host_serror_rate        | float  | % of connections that have "SYN" errors                                                    |
| dst_host_srv_serror_rate    | float  | % of connections that have "SYN" errors                                                    |
| dst_host_rerror_rate        | float  | % of connections that have "REJ" errors                                                    |
| dst_host_srv_rerror_rate    | float  | % of connections that have "REJ" errors                                                    |
| class                       | object | normal / abnormal                                                                          |
