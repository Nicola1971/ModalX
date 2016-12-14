/**
 * ContactFormModal
 *
 * ContactForm tpl for ModalX
 *
 * @category	chunk
 * @internal @modx_category ModalX
 */
<form method="post" action="[~[*id*]~]#EmailForm" id="EmailForm">
	
	<div class="alert alert-danger" id="form-error" role="alert">[+validationmessage+]</div>
	
	<input name="formid" type="hidden" value="ContactForm" />
	
	<div class="form-group col-md-6">
		<label for="cfName">Your name:</label>
		<input type="text" class="form-control" name="name" id="cfName" placeholder="Your Name" eform="Your Name::1:" />
	</div>
	<div class="form-group col-md-6">
		<label for="cfEmail">Your Email Address:</label>
		<input type="text" class="form-control" name="email" id="cfEmail" placeholder="Email Address" eform="Email Address:email:1"/>
	</div>
	
	<div class="form-group col-md-12">
		<label for="cfRegarding">Regarding:</label>
		<select class="form-control" name="subject" id="cfRegarding" eform="Form Subject::1">
			<option value="General Inquiries">General Inquiries</option>
			<option value="Press">Press or Interview Request</option>
			<option value="Partnering">Partnering Opportunities</option>
		</select>
	</div>
	
	<div class="form-group col-md-12">
		<label for="cfMessage">Message:</label>
		<textarea name="message" id="cfMessage" class="form-control" eform="Message:textarea:1"></textarea>
	</div>
	
	<label for="vericode">Captcha Code:</label>
	<div class="form-group">
		<div class="row">
			<div class="col-sm-4">
				<img src="[+verimageurl+]" class="img-responsive" alt="verification code" />
			</div>
			<div class="col-sm-8">
				<input id="vericode" name="vericode" class="form-control" type="text" placeholder="Please repeat">
			</div>
		</div>
	</div>
	<div class="form-group col-md-12 text-center">
            <input type="submit" name="contact" id="cfContact" class="btn btn-lg btn-success" value="Send This Message" />
		<a class="mct_optin_close_btn btn btn-danger btn-lg" href="[~[*id*]~]">No Thanks</a>
	     </div> 
</form>

<script>$('#form-error:empty').hide();</script>
