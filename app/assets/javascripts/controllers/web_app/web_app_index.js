$(document).ready(function(){
	$(".fa").on('click', function(){
		var input = $(this).parent().prev()
		if (input.attr('type') == "text"){
			input.attr('type', 'password');
			$(this).removeClass('fa-eye-slash');
			if (!$(this).hasClass('fa-eye'))
				$(this).addClass('fa-eye');
		}
		else{
			input.attr('type', 'text');
			$(this).removeClass('fa-eye');
			$(this).addClass('fa-eye-slash');
		}
	});
});