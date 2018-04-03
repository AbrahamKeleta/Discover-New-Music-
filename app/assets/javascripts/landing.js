// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require turbolinks
//= require jquery3
//= require jquery_ujs
//= require_tree .



function udpateProgress() {
  
  var player = document.getElementById('player');
  var progressbar = document.getElementById('seekbar');
  progressbar.value = (player .currentTime / player .duration);

  player.onended = function() {
  $('#play').addClass('far fa-play-circle fa-4x'); 
};

};


$(function() {

	$(document).on("click", "#play", function() {
		var song = document.getElementById('player');
		
		if ( !song.paused) {
			$('#play').removeClass('far fa-pause-circle fa-4x');
			$('#play').addClass('far fa-play-circle fa-4x');
			song.pause();
			
		} else {
			$('#play').removeClass('far fa-play-circle fa-4x');
			$('#play').addClass('far fa-pause-circle fa-4x');
			song.play();
		}


	});




	var song = document.getElementById('player');   
	document.onkeypress = function(e){
	    if ((e || window.event).keyCode === 32){
	        if (song.paused) {
	        	$('#play').addClass('far fa-pause-circle fa-4x');
	       		song.play();
	        }  else {
	       		$('#play').addClass('far fa-play-circle fa-4x');
						song.pause();
	        }
	    }
	};
		
});





