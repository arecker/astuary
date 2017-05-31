function tagClickHandler(event) {
  var clicked = $(event.target).attr('href').replace('#', '');
  $('.gallery').show();
  if (clicked === 'tag-all') return;
  $.each($('.tag'), function() {
    var target = $(this).attr('href').replace('#', '');
    if (target !== clicked) {
      $('.' + target).hide();
    }
  });
}

$(function(){
  $('.big-image').abigimage();
  $('.tag').click(tagClickHandler);
});
