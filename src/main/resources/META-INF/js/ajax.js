var java09 ={
	saveContactForm: function(){
		$.ajax({
			url="/contact-bind-data",
			type="post",
			contentType="application/json",
			data: JSON.stringify(data),
			
			success: function(jsonResult){
			alter(jsonResult.message);
			
			}
		});
	}
}