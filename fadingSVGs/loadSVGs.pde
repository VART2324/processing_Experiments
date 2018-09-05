void triShape() { //a function
  float triAlpha; //a variable for the alpha
  triAlpha = int(map(sin(triRad), -1, 1, 0, 255)); //sin cycles between -1 and 1. Here -1 is mapped to 0, and 1 is mapped to 255
  triRad = triRad + speed; //the speed added to the radians keeps increasing the angle
  tri = loadShape("tri.svg"); //load the SVG file
  pushStyle(); //isolates the style for this section (fill, stroke etc)
  tri.disableStyle(); //remove fill and stroke from SVG so you can add an alpha
  noStroke();
  fill(218, 28, 92, triAlpha); //add your own fill with alpha
  shape(tri); //display the shape
  popStyle(); //end of style isolation
  ellipse(300, triAlpha, 20, 20); //delete
}

void balShape() { //a function
  float balAlpha; //a variable for the alpha
  balAlpha = int(map(sin(balRad), -1, 1, 0, 255)); //sin cycles between -1 and 1. Here -1 is mapped to 0, and 1 is mapped to 255
  balRad = balRad + speed; //the speed added to the radians keeps increasing the angle
  bal = loadShape("bal.svg"); //load the SVG file
  pushStyle(); //isolates the style for this section (fill, stroke etc)
  bal.disableStyle(); //remove fill and stroke from SVG so you can add an alpha
  noStroke();
  fill(102, 45, 145, balAlpha); //add your own fill with alpha
  shape(bal); //display the shape
  popStyle(); //end of style isolation
  ellipse(400, balAlpha, 20, 20); //delete
}

void sqaShape() { //a function
  float sqaAlpha; //a variable for the alpha
  sqaAlpha = int(map(sin(sqaRad), -1, 1, 0, 255)); //sin cycles between -1 and 1. Here -1 is mapped to 0, and 1 is mapped to 255
  sqaRad = sqaRad + speed; //the speed added to the radians keeps increasing the angle
  sqa = loadShape("sqa.svg"); //load the SVG file
  pushStyle(); //isolates the style for this section (fill, stroke etc)
  sqa.disableStyle(); //remove fill and stroke from SVG so you can add an alpha
  noStroke();
  fill(57, 181, 74, sqaAlpha); //add your own fill with alpha
  shape(sqa); //display the shape
  popStyle(); //end of style isolation
 ellipse(500, sqaAlpha, 20, 20); //delete
}
