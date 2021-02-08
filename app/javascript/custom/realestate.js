$(document).on("turbolinks:load",function(){

    $('.btn-filter').on('click', function () {
      var $target = $(this).data('target');
      if ($target != 'all') {
        $('#table #td').css('display', 'none');
        $('#table #td[data-status="' + $target + '"]').fadeIn('slow');
      } else {
        $('#table #td').css('display', 'none').fadeIn('slow');
      }
    });

 });