int imgWidth = 400;
int imgHeight = 300;
String pngFilename = "raster_line.png";

void settings() {
  // Create a display window for the raster image
  size(imgWidth, imgHeight);
}
void setup() {

  // Set the background to white
  background(255); // White (RGB: 255, 255, 255)

  // Set line properties for the first line (red)
  stroke(255, 0, 0); // Red color (RGB: 255, 0, 0)
  strokeWeight(2);   // Line thickness of 2 pixels

  // Draw a diagonal line from top-left (0,0) to bottom-right (width-1, height-1)
  // Processing's 'line' function handles pixel approximation for raster drawing.
  line(0, 0, width - 1, height - 1);

  // For a more explicit demonstration of individual pixels/aliasing,
  // let's draw a very thin blue line manually or by setting individual pixels
  // (though 'line' already demonstrates aliasing well).
  // This section is for a more "manual" feel if you want to emphasize pixels directly.
  stroke(0, 0, 255); // Blue
  strokeWeight(1);   // 1 pixel thick

  // Simple direct pixel plotting for a thin line (illustrates aliasing clearly)
  for (int x = 0; x < width; x++) {
    // Simple linear interpolation to find y for diagonal
    // y = (height / width) * x
    float yFloat = (float)(height - 1) * (x / (float)(width - 1));
    int y = round(yFloat); // Round to nearest integer pixel

    // Ensure coordinates are within bounds
    if (x >= 0 && x < width && y >= 0 && y < height) {
      set(x, y, color(0, 0, 255)); // Set individual pixel to blue
    }
  }


  // Save the current display window content as a PNG file
  save(pngFilename);

  // Exit the sketch after saving
  exit();
}

void draw() {
  // The draw loop is not needed for a static image, as 'setup' runs once and saves.
}

// Explanation for Students (for raster_line.png):
/*
"Here, we're working with a fixed grid of pixels on our screen. When we tell
Processing to draw a diagonal line, it can't draw a perfectly smooth line
because it only has square pixels to work with. It has to decide which pixels
to 'turn on' to best represent that diagonal. This results in the 'stair-stepping'
or 'jagged' effect you see when you zoom in very close. This is called **aliasing**.
The PNG file saves the exact color of each of these individual pixels.
That's why when you zoom in on 'raster_line.png', you see the pixels getting larger,
and the line appears blocky – the image's resolution is fixed."
*/
