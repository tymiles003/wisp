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