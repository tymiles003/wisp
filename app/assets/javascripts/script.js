$(function(){
  function shuff () {
    if (counter == $obj.length) {
        counter = 0;
    }
    $obj.eq(counter).shuffleLetters();
    counter++;
    setTimeout(shuff, 4000);
  }

  var counter = 0, $obj = $('#container1, #container2');

  // safety check to make sure there is at least one container
  if ($obj[0]) {
    shuff();
  }
});



    $(window).scroll(function(event) {

      var y = $(this).scrollTop();

       if (y >= 300) {
          $('#woman-grey').addClass('animate');
          $('#woman-orange').addClass('animate');
          $('#woman-red').addClass('animate');
          $('#woman-darkgrey').addClass('animate');
       }

      if (y >= 550) {
          $('#users').addClass('animate');
          $('#calendar').addClass('animate');
      }
    });

