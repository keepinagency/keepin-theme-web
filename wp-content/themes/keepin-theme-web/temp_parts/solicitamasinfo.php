<?php

    $uri = $_SERVER['REQUEST_URI']; // $uri == example.com/sub
    $exploded_uri = explode('/', $uri); //$exploded_uri == array('example.com','sub')
    $domain_name = $exploded_uri[1]; //$domain_name = 'example.com'

    $server = ( isset($_SERVER['HTTPS']) ? 'https' : 'http' ). "://" . $_SERVER['SERVER_NAME'];
    $port   = ( !empty($_SERVER['SERVER_PORT']) ? ':'.$_SERVER['SERVER_PORT'] : '' );

    $pos_v  = strpos($_SERVER['REQUEST_URI'],"v");
    $pos_sl = strpos($_SERVER['REQUEST_URI'],"v",$pos_v);
    $vers   = ( $pos_v > 0 ? substr($_SERVER['REQUEST_URI'],$pos_v,6) : '' );
    
    /*if ($vers){
        $base_url = $server.$port.'/'.$domain_name.'/'.$vers.'/index.php?solicitudmasinfo=1';
    }else{*/
        //$base_url = $server.$port.'/'.$domain_name.'/index.php?solicitudmasinfo=1';
    //}
    $base_url = $server.$port.'/';

    //die();
    $from = "web@keepinagency.com";
    //$from = $_POST['correo'];
    $to = "contacto@keepinagency.com";
	//$to = "javerne@gmail.com";
    $subject = "KeepinAgency.com - Solicitud de mas información";

    

    //die();
    $message =" <html>
                <head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'>
                    <title>KeepinAgency.com - Solicitud de mas información desde la Web</title>
                </head>
                <body>
                    Nueva solicitud de más información desde www.keepinagency.com:<br><br>

                    
                    Correo: <b>".$_POST['correo']."</b><br><br><br><br>

                    www.KeepinAgency.com <br>
                    (by <a href='keepinagency.com'>keepinagency.com</a>)
                </body>
                </html>
            ";
    $headers  = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
    $headers .= "From:" . $from;
    mail($to,$subject,$message, $headers);
    //echo "The email message was sent.";
    header("Location: ".$base_url, true, 301);
    exit();
?>