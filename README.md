# Graphics Demos: Vector vs. Raster Lines (Processing)

This repository contains simple Processing sketches demonstrating the fundamental difference between vector and raster graphics by drawing a diagonal line in both formats.

## Demos

### 1. Vector Line (SVG)

* **File:** `VectorLineDemo/VectorLineDemo.pde`
* **Description:** This sketch uses Processing's SVG renderer to create a line defined by mathematical coordinates. The resulting `vector_line.svg` file can be scaled infinitely without pixelation.
* **How to run:**
    1.  Open `VectorLineDemo.pde` in the Processing IDE.
    2.  Run the sketch. It will generate `vector_line.svg` in the sketch's folder.
    3.  Open `vector_line.svg` in a web browser or vector editor and observe its perfect scalability.

### 2. Raster Line (PNG)

* **File:** `RasterLineDemo/RasterLineDemo.pde`
* **Description:** This sketch draws a line by coloring individual pixels on a grid. The resulting `raster_line.png` file will show pixelation (aliasing/jaggies) when zoomed in.
* **How to run:**
    1.  Open `RasterLineDemo.pde` in the Processing IDE.
    2.  Run the sketch. It will generate `raster_line.png` in the sketch's folder.
    3.  Open `raster_line.png` in an image viewer and zoom in heavily to see the individual pixels.

## Getting Started

To run these demos, you will need:

* [Processing IDE](https://processing.org/download/)
* The Processing "SVG Export" library (installed via `Sketch > Import Library > Add Library...` in the Processing IDE).

## License

This project is open-source. You might consider adding a license like MIT or Apache 2.0.
