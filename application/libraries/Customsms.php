<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Customsms {

    private $_CI;

  
  
  
  

    function __construct() {
        $this->_CI = & get_instance();
        $this->session_name = $this->_CI->setting_model->getCurrentSessionName();
    }

    function sendSMS($to, $message) {
        
        
// 		$data = //"id=".$this->id.
               //"&pass=".$this->pass.
				
               $url = "https://lifetimesms.com/plain";
               
					$parameters  = array("api_token" => "0d32b03c2ad9635e511c77d95d5a599d7f1b2b5756",
                  "api_secret" => "sound-school",
                  "to" => "923204601131",
                  "from" => "SMS Alert",
                  "message" => "this is the last message ",
                );
			
				
				
				
				// 	"&to=".$to.
				// "&msg=".urlencode($message).
				
				// "&api_token=".$this->api_token;
				// "&api_secret=".$this->api_secret;
					
			//	"&from=".$this->$from;
				
			//	"&lang=".$this->lang.
			//	"&mask=".$this->mask.
			//	"&type=".$this->type;
				
				//  print_r($data);
                //  die;
				// exit();
				
				
	
        
		// $ch = curl_init('https://lifetimesms.com/plain');
		// curl_setopt($ch, CURLOPT_POST, true);
		// curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
		// curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		// $result = curl_exec($ch);
		
        $ch = curl_init();
$timeout  =  30;
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST,  2);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $parameters);
curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
$response = curl_exec($ch);
curl_close($ch);
		echo '<pre>'; print_r($response);
		return $result;
		
	
		
    }

}

?>