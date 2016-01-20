// This is a comment.
// Comments are used for making notes to help people better understand programs. 
// A comment begins with two forward slashes ("//") 


// The statements in the setup() function 
// execute once when the program begins
void setup() {
    // Statements are the elements that make up programs. 
    // The ";" (semi-colon) symbol is used to end statements.

    // The size function is a statement that tells the computer 
    // how large to make the window.
    // Each function statement has zero or more parameters. 
    // Parameters are data passed into the function
    // and are used as values for telling the computer what to do.
    size(500, 500);
}

// The statements in draw() are executed until the 
// program is stopped. Each statement is executed in 
// sequence and after the last line is read, the first 
// line is executed again.
void draw() {
    //rect function draws a rectangle with the given parameters:
    //rect(x-coordinate, y-coordinate, width of rectangle, height of rectangle)
    rect(200, 200, 100, 100);
}