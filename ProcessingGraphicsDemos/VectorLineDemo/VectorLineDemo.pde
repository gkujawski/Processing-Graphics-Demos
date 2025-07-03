import processing.svg.*; // Import the SVG library

int imgWidth = 400;
int imgHeight = 300;
String svgFilename = "vector_line.svg";

// The settings() function is called before setup() and is where
// size(), fullScreen(), and pixelDensity() should be called,
// especially when using a custom renderer like SVG or P3D,
// or when using variables for width/height.
void settings() {
  size(imgWidth, imgHeight, SVG, svgFilename);
}

void setup() {
  // Set line properties
  stroke(0, 0, 255); // Blue color (RGB: 0, 0, 255)
  strokeWeight(5);   // Line thickness of 5 pixels (or units in SVG)

  // Draw a diagonal line from top-left (0,0) to bottom-right (width, height)
  line(0, 0, width, height);

  // Finalize and save the SVG file
  // It's important to call exit() when using SVG renderer without a display window.
  // Otherwise, the file might not be fully written.
  exit();
}

void draw() {
  // The draw loop is not needed for a single-frame SVG export
  // when using size(..., SVG, filename).
}

// Explanation for Students (for vector_line.svg):
/*
"Notice how we've now put the 'size()' command in a special function called 'settings()'.
In newer versions of Processing, if you're using a specific renderer like SVG,
or if you're setting the size using variables (like 'imgWidth' and 'imgHeight' here),
you must call 'size()' inside 'settings()'. This function runs even before 'setup()'.
The rest of the drawing logic, like setting the color and drawing the line,
still happens in 'setup()'. The important thing remains: we define the line
mathematically, which is why the SVG scales perfectly."
*/
