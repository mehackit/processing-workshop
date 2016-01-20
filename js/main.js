var processingInstance;

//check if element contains an editor and init it
function add_editor_if_needed(element) {
  var editor = element.find('#editor');
  if (editor.length > 0) {
    initialize_ace(editor, element);
  }
}

//check if element contains an example and run it
function add_example_if_needed(element) {
  var example = element.find('.example')[0];
  if (example) {
    var canvas = element.find('canvas')[0];
    var filepath = element.find('canvas').attr('filepath');
    $.ajax(filepath, {
      dataType: 'text',
      success: function (data) {
        startSketch(data, canvas, element);
      }
    });
  };
}

function initialize_ace(editor, element) {
  // initialize ACE editor, set a few options
  var ace_editor = ace.edit('editor'); //editor[0] gets the actual DOM element instead of jQuery object
  ace_editor.setTheme("ace/theme/chrome");
  ace_editor.getSession().setMode("ace/mode/java");
  ace_editor.getSession().setTabSize(2);
  ace_editor.setFontSize("16px");

  // get processing sketch filepath form filepath attribute
  var filepath = editor.attr('filepath');

  if (filepath) {
    // load file with ajax and pass a function that runs after success
    $.ajax(filepath, {
      dataType: 'text',
      success: function (data) {
        // set data to editor and move cursor to beginning
        ace_editor.setValue(data, -1);
        loadEditor(ace_editor, element);
        //ace_editor.resize();
      }
    });
  } else {
    loadEditor(ace_editor, element);
    //ace_editor.resize();
  } 
}

function loadEditor(ace_editor, element) {
  // get canvas DOM_element from element
  var canvas = element.find('.canvas:first')[0];

  // hide canvas
  element.find(".display").attr('style', 'display: none;');

  // add startSketch funtion to start button and show button
  element.find("#btn_start").click(function() { 
    // get processing sketch source code from ACE editor
    var sourceCode = ace_editor.getValue();
    startSketch(sourceCode, canvas, element); 

  }).show();

  // add stopSketch function to stop button and hide button
  element.find("#btn_stop").click(function() { 
    stopSketch(element); 
  }).hide();
}

function startSketch(processingCode, canvas, element) {
  // stop first if already running
  if(processingInstance) {
    stopSketch(element);
  }

  // compile processingCode using Processing JS 
  var jsCodeStr = Processing.compile(processingCode).sourceCode;
  // evaluate it to actual JS code
  var jsCode = eval(jsCodeStr);
  // create new Processing instance, and associate to canvas
  processingInstance = new Processing(canvas, jsCode); 


  // put Processing sketch to run
  switchSketchState(true);

  // show control buttons
  element.find("#btn_start:first").hide();
  element.find("#btn_stop:first").show();

  // handle weird resizing stuff
  if (canvas.className.indexOf('chapter') > -1 ) {
    var top = element.find(".exercise").height() / 2 - element.find("canvas").height() / 2;
    var left = element.find(".exercise").width() / 2 - element.find("canvas").width() / 2;
    $("canvas").css({
      "margin-left": left
    });
  } else if (element.find(".display")) {
    var display = element.find(".display");
    var left = $(window).width() - $('.content.container').innerWidth() / 2 - $('.display').width() / 2;
    var top = $(window).height() / 2 - display.height() / 2;
    element.find(".display").css({
      'display': 'block',
      'position': 'fixed',
      'left': left,
      'top': top
    });

  }
}

function stopSketch(element) {
  switchSketchState(false);
  element.find(".display").attr('style', 'display: none;  ');
  element.find("#btn_start").show();
  element.find("#btn_stop").hide();
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
  element = $(this);
  add_editor_if_needed(element);
  add_example_if_needed(element);

  $(window).on('resize', function(){
    add_example_if_needed(element);
  });

});