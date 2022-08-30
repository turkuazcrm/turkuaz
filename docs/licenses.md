# Licenses

This project has been forked from Vtiger CRM in July 2022 which means
that we inherit some parts of it.  In the future, we will slowly delete
pieces that are from the upstream project.  Since, we still hold the Git
history of the upstream project, we aim to delete all license related
files, and share them in a documentation like this.  Also, some
dependencies that present in Vtiger may not present in this project
because of either security, performance, usability or license problems.

## About This Project

Turkuaz CRM uses [GNU AGPL, Version 3.0].  All source codes that are not
originated from the original authors will automatically licensed in
AGPL.

## Third Party Libraries

This project uses multiple of third party libraries and/or projects as
a dependency.  This document here to explain what are those libraries
and which licenses are used when they are distributed.  The list is
alphabetically ordered by the library name.  Some libraries use
dual-licensing, so that we picked one and best option for this project.

We exceptionally add SugarCRM Public License which is from SugarCRM
where Vtiger CRM originates from.  Since they closed the source code or
do not provide source code that is available to public under the same
license that they created as SPL 1.1.2.

| Library Name             | License Name                                     |
|--------------------------|:-------------------------------------------------|
| [ADOdb]                  | [3-Clause BSD] & [GNU LGPL, Version 2.1]         |
| [antlr]                  | [3-Clause BSD]                                   |
| [Bootstrap 2]            | [Apache License, Version 2.0]                    |
| [Bootstrap 3]            | [MIT]                                            |
| [dZip]                   | [2-Clause BSD]                                   |
| [freetag]                | [3-Clause BSD] & [GNU LGPL, Version 2.1]         |
| fullcalendar             | [MIT]                                            |
| garand-sticky            | [MIT]                                            |
| [google-api-php-client]  | [Apache License, Version 2.0]                    |
| [guidersjs]              | [Apache License, Version 2.0]                    |
| [html5shim]              | [MIT] & [GNU GPL, Version 2.0]                   |
| [htmlpurifier]           | [GNU LGPL, Version 2.1]                          |
| [HTTP_Request]           | [2-Clause BSD]                                   |
| [HTTP_Session2]          | [3-Clause BSD]                                   |
| [HTTP_Session]           | [PHP License 3.0]                                |
| [Image_Canvas]           | GNU LGPL                                         | <!-- Doesnt present? -->
| [Image_Color]            | [GNU LGPL, Version 2.1]                          | <!-- Doesnt present? -->
| [Image_Graph]            | [GNU LGPL, Version 2.1]                          | <!-- Doesnt present? -->
| [jasny-bootstrap]        | [Apache License, Version 2.0]                    |
| jscalendar               |                                                  | <!-- Doesnt present? -->
| KCFinder                 | [GNU GPL, Version 2.0] & [GNU LGPL, Version 2.1] |
| [log4php]                | [Apache License, Version 2.0]                    |
| Mailfeed                 | GNU GPL                                          | <!-- Doesnt present? -->
| [MapieRSS]               | [GNU GPL, Version 2.0]                           |
| [mobileDetect]           | [MIT]                                            |       <!-- No usage? -->
| [Net_Socket]             | [2-Clause BSD]                                   |
| [Net_URL]                | [2-Clause BSD]                                   |
| NOCC scripts             | GNU GPL                                          | <!-- Doesnt present? -->
| [nusoap]                 | [GNU LGPL, Version 2.1]                          |
| [PEAR]                   | [2-Clause BSD]                                   |
| PHP Class mimetype       | BSD                                              | <!-- Doesnt present? -->
| [PHPExcel]               | [GNU LGPL, Version 2.1]                          |
| [PHPMailer]              | [GNU LGPL, Version 2.1]                          |
| [PHPMarkdown]            | [3-Clause BSD]                                   |       <!-- No usage? -->
| script.oculo.us          | [MIT]                                            | <!-- Doesnt present? -->
| [simplepie]              | [3-Clause BSD]                                   |
| [Smarty Template Engine] | [GNU LGPL, Version 3.0]                          |
| tcpdf                    | [GNU LGPL, Version 2.1]                          |
| ToAscii                  | [GNU GPL, Version 2.0]                           |
| [Zend]                   | [3-Clause BSD]                                   |

[ADOdb]: https://github.com/ADOdb/ADOdb
[antlr]: https://github.com/antlr/antlr-php-runtime
[Bootstrap 2]: https://github.com/twbs/bootstrap/tree/v2.0.0
[Bootstrap 3]: https://github.com/twbs/bootstrap/blob/v3-dev/LICENSE
[dZip]: https://www.phpclasses.org/dunzip2
[freetag]: https://github.com/freetag/freetag
[google-api-php-client]: https://github.com/googleapis/google-api-php-client
[guidersjs]: https://github.com/pickhardt/Guiders-JS
[htmlpurifier]: https://github.com/ezyang/htmlpurifier
[html5shim]: https://github.com/aFarkas/html5shiv
[HTTP_Request]: https://pear.php.net/package/HTTP_Request
[HTTP_Session]: https://pear.php.net/package/HTTP_Session
[HTTP_Session2]: https://pear.php.net/package/HTTP_Session2
[jasny-bootstrap]: https://github.com/jasny/bootstrap
[Image_Canvas]: https://pear.php.net/package/Image_Canvas
[Image_Color]: https://pear.php.net/package/Image_Color
[Image_Graph]: https://pear.php.net/package/Image_Graph
[log4php]: https://logging.apache.org/log4php/
[MapieRSS]: https://sourceforge.net/projects/magpierss/
[mobileDetect]: https://github.com/serbanghita/Mobile-Detect
[Net_Socket]: https://pear.php.net/package/Net_Socket
[Net_URL]: https://pear.php.net/package/Net_URL
[nusoap]: https://sourceforge.net/projects/nusoap/
[PEAR]: https://pear.php.net/package/PEAR
[PHPExcel]: https://github.com/PHPOffice/PHPExcel
[PHPMarkdown]: https://github.com/michelf/php-markdown
[PHPMailer]: https://github.com/PHPMailer/PHPMailer
[simplepie]: https://github.com/simplepie/simplepie
[Smarty Template Engine]: https://www.smarty.net
[Zend]: http://framework.zend.com
[3-Clause BSD]: https://opensource.org/licenses/BSD-3-Clause
[Apache License, Version 2.0]: https://opensource.org/licenses/Apache-2.0
[MIT]: https://opensource.org/licenses/mit-license.php
[2-Clause BSD]: https://opensource.org/licenses/BSD-2-Clause
[GNU LGPL, Version 2.1]: http://www.opensource.org/licenses/lgpl-2.1.php
[PHP License 3.0]: https://opensource.org/licenses/PHP-3.0
[GNU LGPL, Version 3.0]: https://opensource.org/licenses/lgpl-license
[GNU GPL, Version 2.0]: https://opensource.org/licenses/gpl-license
[GNU AGPL, Version 3.0]: https://opensource.org/licenses/AGPL-3.0
