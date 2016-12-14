/**
 * ModalContact-tpl
 *
 * Contact Tpl for ModalX
 *
 * @category	chunk
 * @internal @modx_category ModalX
 */
<div class="mct_optin">
    <div class="mct_optin_overlay animate"></div>
    <div class="mct_optin_content animate">
  <div class="mct_optin_inner_content">  
  <div class="mct_optin_upper_content">
  <h1>Any question?</h1><h3>Contact Us</h3>
</div>  <div class="mct_optin_upper_content">
[!eForm? 
	&formid=`ContactForm`
 	&vericode=`1`
	&subject=`[+subject+]`
	&to=`[(emailsender)]` 
	&ccsender=`1`
	&tpl=`ContactFormModal`
	&report=`ContactFormReport`
	&invalidClass=`invalidValue`
	&requiredClass=`requiredValue`
	&gotoid=`46`
!]
</div>
</div>
</div>
</div>

