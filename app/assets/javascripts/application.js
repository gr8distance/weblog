//= require jquery
//= require rails-ujs
//= require turbolinks
//= require materialize-sprockets
//= require_tree .

$(function (){
		$('.parallax').parallax();
		$('.parallax-container').css({
				height: $(window).height()
		});
});
