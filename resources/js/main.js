var processingInstance;
//var processingInstance, ace_editor, canvas;

function initialize_fullpage() {
  $('#fullpage').fullpage({
    anchors:['firstChapter', 'secondChapter', 'thirdChapter'],
    verticalCentered: true,
    menu: true,
    navigation: true,
    navigationPosition: 'right',
    slidesNavigation: true,
    slidesNavPosition: 'bottom',
    controlArrows: false,

    afterLoad: function(anchorLink, index, slideAnchor, slideIndex){
      add_editor_if_needed($(this));
      add_example_if_needed($(this));
    }

  });
}

function add_editor_if_needed(slide) {
  var editor = slide.find('#editor');
  if (editor.length > 0) {
    initialize_ace(editor, slide);
  };
}

function add_example_if_needed(slide) {
  var example = slide.find('#example');
  if (example.length > 0) {
    initialize_example(example, slide);
  };
}

function initialize_example(example, slide) {
  var canvas = slide.find('#sketch')[0];
  startSketch(example.text(), canvas, slide);
}

function initialize_ace(editor, slide) {
  // initialize ACE editor, set a few options
  var ace_editor = ace.edit(editor[0]); //editor[0] gets the actual DOM element instead of jQuery object
  ace_editor.setTheme("ace/theme/chrome");
  ace_editor.getSession().setMode("ace/mode/java");
  ace_editor.getSession().setTabSize(2);

  var canvas = slide.find('#sketch')[0];

  slide.find(".display").hide();
  slide.find("#btn_start").click(function() { startSketch(ace_editor.getValue(), canvas, slide); }).show();
  slide.find("#btn_stop").click(function() { stopSketch(slide); }).hide();

  // $( document ).bind('keypress', 's', function() { stopSketch(slide); });
  // $( document ).bind('keydown', 'esc', function() { startSketch(ace_editor.getValue(), canvas, slide); });

  // $( document ).bind('keypress', 's', stopSketch(slide) );
  // $( document ).bind('keydown', 'esc', startSketch(ace_editor.getValue(), canvas, slide) );
}

function startSketch(processingCode, canvas, slide) {
  // stop first if already running
  if(processingInstance) {
    stopSketch(slide);
  }
  // get processing sketch source code from ACE editor
  // var processingCode = ace_editor.getValue();
  // compile it using Processing JS 
  var jsCodeStr = Processing.compile(processingCode).sourceCode;
  // evaluate it to actual JS code
  var jsCode = eval(jsCodeStr);
  // create new Processing instance, and associate to canvas
  processingInstance = new Processing(canvas, jsCode); 
  // put Processing sketch to run
  switchSketchState(true);

  slide.find(".display").show();
  //center allign canvas
  var top = $( window ).height() / 2 - slide.find("#sketch").height() / 2;
  var left = parseInt($(".section").css( "width" )) / 2 - slide.find("#sketch").width() / 2;
  $(".display").css({'top': top, 'left': left});

  
  slide.find("#btn_start").hide();
  slide.find("#btn_stop").show();
}

function stopSketch(slide) {
  switchSketchState(false);
  processingInstance = null;
  slide.find(".display").hide();
  slide.find("#btn_start").show();
  slide.find("#btn_stop").hide();
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
});
