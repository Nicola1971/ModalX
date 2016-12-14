/**
 * ModalX
 *
 * Modal Optin for Evo
 * @version   1.0RC
 * @author      Author: Nicola Lambathakis http://www.tattoocms.it/
 *
 * @category	snippet
 * @internal	@modx_category Forms
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */
<?php
/**
 * ModalX
 *
 * Modal Optin for Evo
 * @version   1.0RC
 * @author      Author: Nicola Lambathakis http://www.tattoocms.it/
 *
 * @category	snippet
 * @internal	@modx_category Forms
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */
if(!defined('MODX_BASE_PATH')){die('What are you doing? Get out of here!');}
$jQuery = isset($jQuery) ? $jQuery : '0';
$LoadStyles = isset($LoadStyles) ? $LoadStyles : '1';
$mode = isset($mode) ? $mode : 'optin';
$waitfor = isset($waitfor) ? $waitfor : '5';
$ModalTpl = isset($ModalTpl) ? $ModalTpl : 'ModalOptin-tpl';


//modal css styles
if($LoadStyles == "1"){
if($mode == "optin"){
$cssoutput='<link rel="stylesheet" href="assets/snippets/modalx/css/optin.css">';
}
else {
$cssoutput='<link rel="stylesheet" href="assets/snippets/modalx/css/wait.css">';
}
}
//jquery lib
if($jQuery == "1"){
$scriptoutput .='
<script src="assets/snippets/modalx/js/jquery.min.js"></script>';
}
//jquery.cookie and optin/wait js
$scriptoutput .='
<script src="assets/snippets/modalx/js/jquery.cookie.min.js"></script>';
if($mode == "optin"){
$scriptoutput .='<script src="assets/snippets/modalx/js/optin.min.js"></script>
<script>
jQuery(document).ready(function(){
  var optin = mct_optin;
  optin.open();
});
</script>';
}
else if($mode == "wait"){
$scriptoutput .='
<script src="assets/snippets/modalx/js/wait.min.js"></script>
<script>
idleTime = 0;
jQuery(document).ready(function( $ ) {
	$limit = '.$waitfor.';	
	if ($.cookie("modalx_wait") != "1") {      
		function timerIncrement() {
			idleTime = idleTime + 1;
			if (idleTime > $limit) { 
				    $(".mct_optin").modal();
					idleTime = 0;
			}
		}		
		var idleInterval = setInterval(timerIncrement, 1000); // 1 second
		$(this).mousemove(function (e) {
			idleTime = 0;
		});
		$(this).keypress(function (e) {
			idleTime = 0;
		});
		
		$.cookie("modalx_wait", "1", { expires: 30 });
	}
	
});
</script>';
} 
// output modal content from your tpl
$output = $modx->getChunk( $ModalTpl );
// output styles and js with regclient
$modx->regClientCss( $cssoutput );
$modx->regClientScript( $scriptoutput );

return $output;
