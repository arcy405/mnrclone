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
    $("#kattha").click(function() {
      var id = $(this).attr("id");
      $("#pages div#dhur").css("display", "none");
        $("#pages div#bigha").css("display", "none");
      $("#pages div#" + id + "").css("display", "block");
      console.log("katha")
    });
    $("#dhur").click(function() {
      var id = $(this).attr("id");
      $("#pages div#kattha").css("display", "none");
        $("#pages div#bigha").css("display", "none");
      $("#pages div#" + id + "").css("display", "block");
    });
    $("#bigha").click(function() {
      var id = $(this).attr("id");
      $("#pages div#kattha").css("display", "none");
        $("#pages div#dhur").css("display", "none");
      $("#pages div#" + id + "").css("display", "block");
    });
    $("#sellHouse").click(function() {
      var id = $(this).attr("id");
      $("#pages div#land").css("display", "none");
      $("#pages div#" + id + "").css("display", "block");
    });
    $("#land").click(function() {
      var id = $(this).attr("id");
      $("#pages div#sellHouse").css("display", "none");
      $("#pages div#" + id + "").css("display", "block");
    });
    });