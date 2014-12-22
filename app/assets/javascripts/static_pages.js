$(function() {
    var slider_text = "neutral";
    var qualifiers = ['neutral', 'somewhat', 'largely', 'completely'];
    var nouns = ['sad', 'happy'];
 
    function get_slider_text(ui_value) {
      var slider_value;

      if (ui_value > 0) {
        slider_value = qualifiers[ui_value] + ' ' + nouns[1];
      } else {
        if (ui_value < 0) {
          slider_value = qualifiers[-ui_value] + ' ' + nouns[0];
        } else {
          slider_value = qualifier[0];
        }
      }
      return slider_value;
    }

    $('#slider-value').html(slider_text);
    $('#slider1').slider({
      min: -3,
      max: 3,
      step: 1,
      change: function( event, ui ) {
        slider_text = get_slider_text(ui.value);
        $('#slider-value').html(slider_text);
      }
    });
    $('#slider2').slider({
      min: -3,
      max: 3,
      step: 1,
      change: function( event, ui ) {
        slider_text = get_slider_text(ui.value);
        $('#slider-value').html(slider_text);
      }
    });
    $('#slider3').slider({
      min: -3,
      max: 3,
      step: 1,
      change: function( event, ui ) {
        slider_text = get_slider_text(ui.value);
        $('#slider-value').html(slider_text);
      }
    });
    $('#slider4').slider({
      min: -3,
      max: 3,
      step: 1,
      change: function( event, ui ) {
        slider_text = get_slider_text(ui.value);
        $('#slider-value').html(slider_text);
      }
    });
    $('#slider5').slider({
      min: -3,
      max: 3,
      step: 1,
      change: function( event, ui ) {
        slider_text = get_slider_text(ui.value);
        $('#slider-value').html(slider_text);
      }
    });
    $('#slider6').slider({
      min: -3,
      max: 3,
      step: 1,
      change: function( event, ui ) {
        slider_text = get_slider_text(ui.value);
        $('#slider-value').html(slider_text);
      }
    });
    $('#slider7').slider({
      min: -3,
      max: 3,
      step: 1,
      change: function( event, ui ) {
        slider_text = get_slider_text(ui.value);
        $('#slider-value').html(slider_text);
      }
    });
    $('#slider8').slider({
      min: -3,
      max: 3,
      step: 1,
      change: function( event, ui ) {
        slider_text = get_slider_text(ui.value);
        $('#slider-value').html(slider_text);
      }
    });
});
