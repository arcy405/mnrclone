$(document).on("turbolinks:load",function(){
    $("#house").click(function() {
      var id = $(this).attr("id");
      $("#pages div#flat").css("display", "none");
        $("#pages div#room").css("display", "none");
        $("#pages div#shutter").css("display", "none");
      $("#pages div#" + id + "").css("display", "block");
    });
    $("#flat").click(function() {
      var id = $(this).attr("id");
      $("#pages div#house").css("display", "none");
        $("#pages div#room").css("display", "none");
        $("#pages div#shutter").css("display", "none");
      $("#pages div#" + id + "").css("display", "block");
    });
    $("#room").click(function() {
      var id = $(this).attr("id");
      $("#pages div#house").css("display", "none");
        $("#pages div#flat").css("display", "none");
        $("#pages div#shutter").css("display", "none");
      $("#pages div#" + id + "").css("display", "block");
    });
    $("#shutter").click(function() {
      var id = $(this).attr("id");
      $("#pages div#house").css("display", "none");
        $("#pages div#room").css("display", "none");
        $("#pages div#flat").css("display", "none");
      $("#pages div#" + id + "").css("display", "block");
    });
    });