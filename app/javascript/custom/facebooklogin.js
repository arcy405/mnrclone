$(document).on("turbolinks:load",function(){
	FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
});
});