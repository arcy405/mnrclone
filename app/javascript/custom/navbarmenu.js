$(document).on("turbolinks:load",function(){
    $(document).on('click', '.dropdown-menu', function (e) {
      e.stopPropagation();
    });
});