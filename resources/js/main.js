var processingInstance;

function initialize_fullpage() {
  $('#fullpage').fullpage({
    anchors: ['home', 'welcome', 'shapes', 'animation', 'interaction', 'noise', 'transform', 'other_resources', 'movie', 'footer'],
    menu: '#menu',
    paddingTop: 50,
    verticalCentered: true,
    navigation: true,
    navigationPosition: 'right',
    slidesNavigation: true,
    slidesNavPosition: 'bottom',
    controlArrows: false,

    afterLoad: function(anchorLink, index, slideAnchor, slideIndex){
      //move to first slide if on some other slide
      if (slideIndex > 0) {
        // console.log("After Load on section " + index + ", slide " + slideIndex + " called");
        // $.fn.fullpage.moveTo(index, 0);
      } else {
        // console.log("After Load on section " + index + ", slide " + slideIndex + " called");
        //afterSlideLoad is not called when new section with slide index 0 is loaded. Hence we do this stuff twice
        add_editor_if_needed($(this).find('.slide:first'));
        add_example_if_needed($(this).find('.slide:first'));

        if (index == 1) {
          setTimeout(function(){
            $( '#arrow1' ).fadeIn(500);
          }, 1500);
        } else if (index == 2) {
          setTimeout(function(){
            $( '#arrow2' ).fadeIn(500);
          }, 1500);
        } else if (index == 3) {
          setTimeout(function(){
            $( '#arrow4' ).fadeIn(500);
          }, 1500);
        }
      }
    },

    afterSlideLoad: function(anchorLink, index, slideAnchor, slideIndex){
      // console.log("After Slide Load on section " + index + ", slide " + slideIndex + " called");
      add_editor_if_needed($(this));
      add_example_if_needed($(this));

      if (index == 1) {
        setTimeout(function(){
          $( '#arrow1' ).fadeIn(500);
        }, 1500);
      } else if (index == 2 && slideIndex == 0) {
        setTimeout(function(){
          $( '#arrow2' ).fadeIn(500);
        }, 1500);
      } else if (index == 2 && slideIndex == 1) {
        setTimeout(function(){
          $( '#arrow3' ).fadeIn(500);
        }, 1500);
      } else if (index == 3 && slideIndex == 0) {
        setTimeout(function(){
          $( '#arrow4' ).fadeIn(500);
        }, 1500);
      }
    },

    onLeave: function(index, nextIndex, direction){
      $( '#arrow1' ).hide();
      $( '#arrow2' ).hide();
      $( '#arrow3' ).hide();
      $( '#arrow4' ).hide();
    },

    onSlideLeave: function( anchorLink, index, slideIndex, direction, nextSlideIndex) {
      $( '#arrow2' ).hide();
      $( '#arrow3' ).hide();
      $( '#arrow4' ).hide();
    }
  });
}

//check if slide contains an editor and init it
function add_editor_if_needed(slide) {
  var editor = slide.find('#editor:first');
  if (editor.length > 0) {
    initialize_ace(editor, slide);
  }
}

//check if slide contains an example and run it
function add_example_if_needed(slide) {
  var example = slide.find('[type=example]:first');
  if (example.length > 0) {
    var canvas = slide.find('.canvas:first')[0];
    var filepath = slide.find('.canvas:first').attr('filepath');
    $.ajax(filepath, {
      dataType: 'text',
      success: function (data) {
        startSketch(data, canvas, slide);
        slide.find('.fp-tableCell:first').attr('style', 'vertical-align: baseline;');
      }
    });
  };
}

function initialize_ace(editor, slide) {
  // initialize ACE editor, set a few options
  var ace_editor = ace.edit(editor[0]); //editor[0] gets the actual DOM element instead of jQuery object
  ace_editor.setTheme("ace/theme/chrome");
  ace_editor.getSession().setMode("ace/mode/java");
  ace_editor.getSession().setTabSize(2);

  // get processing sketch filepath form filepath attribute
  var filepath = editor.attr('filepath');

  if (filepath) {
    // load file with ajax and pass a function that runs after success
    $.ajax(filepath, {
      dataType: 'text',
      success: function (data) {
        // set data to editor and move cursor to beginning
        ace_editor.setValue(data, -1);
        loadEditor(ace_editor, slide);
      }
    });
  } else {
    loadEditor(ace_editor, slide);
  } 
}

function loadEditor(ace_editor, slide) {
  // get canvas DOM_element from slide
  var canvas = slide.find('.canvas:first')[0];

  // hide canvas
  slide.find(".display:first").attr('style', 'display: none;');

  // add startSketch funtion to start button and show button
  slide.find("#btn_start:first").click(function() { 
    // get processing sketch source code from ACE editor
    var sourceCode = ace_editor.getValue();
    startSketch(sourceCode, canvas, slide); 
  }).show();

  // add stopSketch function to stop button and hide button
  slide.find("#btn_stop:first").click(function() { 
    stopSketch(slide); 
  }).hide();
}

function startSketch(processingCode, canvas, slide) {
  // stop first if already running
  if(processingInstance) {
    stopSketch(slide);
  }

  // compile processingCode using Processing JS 
  var jsCodeStr = Processing.compile(processingCode).sourceCode;
  // evaluate it to actual JS code
  var jsCode = eval(jsCodeStr);
  // create new Processing instance, and associate to canvas
  processingInstance = new Processing(canvas, jsCode); 

  // put Processing sketch to run
  switchSketchState(true);

  centerAlignCanvas(slide);

  slide.find("#btn_start:first").hide();
  slide.find("#btn_stop:first").show();
}

function centerAlignCanvas(slide){
  //center allign canvas
  slide.find(".display:first").attr('style', 'display: block;');
  var top = $( window ).height() / 2 - slide.find(".canvas:first").height() / 2;
  var left = parseInt($(".section").css( "width" )) / 2 - slide.find(".canvas:first").width() / 2;
  slide.find(".display:first").attr('style', 'display: block; left: ' + left + 'px; top: ' + top + 'px');
}

function stopSketch(slide) {
  switchSketchState(false);
  processingInstance = null;
  slide.find(".display:first").attr('style', 'display: none;  ');
  slide.find("#btn_start:first").show();
  slide.find("#btn_stop:first").hide();
}

function switchSketchState(on) {
  if (processingInstance) {
    if (on) {
      processingInstance.loop();  // call Processing loop() function
    } else {
      processingInstance.noLoop(); // stop animation, call noLoop()
    }
  }
}

$(document).ready(function(){
  initialize_fullpage();
  $.fn.fullpage.setMouseWheelScrolling(false);
  $.fn.fullpage.setAllowScrolling(false);
});