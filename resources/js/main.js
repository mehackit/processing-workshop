var processingInstance;

function initialize_fullpage() {
  $('#fullpage').fullpage({
    anchors: ['welcome', 'helloWorld', 'interaction'],
    menu: '#menu',
    verticalCentered: true,
    navigation: true,
    navigationPosition: 'right',
    slidesNavigation: true,
    slidesNavPosition: 'bottom',
    controlArrows: false,

    afterLoad: function(anchorLink, index, slideAnchor, slideIndex){
      //add_editor_if_needed($(this).first());
      add_example_if_needed($(this).first());
    },

    afterSlideLoad: function(anchorLink, index, slideAnchor, slideIndex){
      add_editor_if_needed($(this));
      add_example_if_needed($(this));
    }
  });
}

//check if slide contains an editor and init it
function add_editor_if_needed(slide) {
  var editor = slide.find('#editor:first');
  if (editor.length > 0) {
    initialize_ace(editor, slide);
  };
}

//check if slide contains an example and run it
function add_example_if_needed(slide) {
  var example = slide.find('[type=example]:first');
  if (example.length > 0) {
    //stop processing if running
    if (processingInstance) {
      switchSketchState(false);
      processingInstance = null;
    };
    //start sketch
    processingInstance = Processing.getInstanceById(example.attr('id'));
    switchSketchState(true);
    slide.find('.fp-tableCell:first').attr('style', 'vertical-align: baseline;');
    centerAlignCanvas(slide);
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

  // load file with ajax and pass a function that runs after success
  $.ajax(filepath, {
    dataType: 'text',
    success: function (data) {
        // set data to editor and move cursor to beginning
        ace_editor.setValue(data, -1);

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
  });
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
});
