int leftLampSize = 100;
int rightLampSize = 200;

void setup() {
  size(500, 500);
  background(0);
  smooth();
}

void draw() {
  background(0);
  noStroke();

  drawPoliceLights();

  // TODO: заставьте полицейскую мигалку работать.

  delay(500);
}

void drawPoliceLights() {
  int centerX = width / 2;
  int centerY = height / 2;
  int size = 500;

  int glassBaseX = centerX - 200;
  int glassBaseY = centerY + 50;
  int glassSizeShift = 40;
  int glassBaseWidth = size - 100;
  int glassBaseHeight = size - 300;
  int glassColor = 40;
  int glassColorShift = 10;

  fill(glassColor);
  rect(glassBaseX, glassBaseY, glassBaseWidth, glassBaseHeight);
  glassBaseX += glassSizeShift / 2;
  glassBaseWidth -= glassSizeShift;
  glassColor += glassColorShift;
  fill(glassColor);
  rect(glassBaseX, glassBaseY, glassBaseWidth, glassBaseHeight);
  glassBaseX += glassSizeShift / 2;
  glassBaseWidth -= glassSizeShift;
  glassColor += glassColorShift;
  fill(glassColor);
  rect(glassBaseX, glassBaseY, glassBaseWidth, glassBaseHeight);

  int glassCoverX = centerX;
  int glassCoverY = centerY + 50;
  int glassCoverWidth = size - 100;
  int glassCoverHeight = 400;

  glassColor = 40;
  fill(glassColor);
  arc(glassCoverX, glassCoverY, glassCoverWidth, glassCoverHeight, PI, TWO_PI, CHORD);
  glassCoverY += glassSizeShift / 2;
  glassCoverWidth -= glassSizeShift;
  glassCoverHeight += glassSizeShift / 2;
  glassColor += glassColorShift;
  fill(glassColor);
  arc(glassCoverX, glassCoverY, glassCoverWidth, glassCoverHeight, PI, TWO_PI, CHORD);
  glassCoverY += glassSizeShift / 2;
  glassCoverWidth -= glassSizeShift;
  glassCoverHeight += glassSizeShift / 2;
  glassColor += glassColorShift;
  fill(glassColor);
  arc(glassCoverX, glassCoverY, glassCoverWidth, glassCoverHeight, PI, TWO_PI, CHORD);

  int lampXShift = 50;
  int lampYShift = 100;
  int leftLampX = centerX - lampXShift;
  int rightLampX = centerX + lampXShift;
  int lampsY = centerY + lampYShift; 
  int lampHaloSizeMult = 2;
  int leftLampHaloSize = leftLampSize * lampHaloSizeMult;
  int rightLampHaloSize = rightLampSize * lampHaloSizeMult;
  int leftLampColor = 0xFFFF0000;
  int leftLampHaloColor = 0x22FF0000;
  int rightLampColor = 0xFF0000FF;
  int rightLampHaloColor = 0x220000FF;

  fill(leftLampColor);
  ellipse(leftLampX, lampsY, leftLampSize, leftLampSize);
  fill(leftLampHaloColor);
  ellipse(leftLampX, lampsY, leftLampHaloSize, leftLampHaloSize);
  fill(rightLampColor);
  ellipse(rightLampX, lampsY, rightLampSize, rightLampSize);
  fill(rightLampHaloColor);
  ellipse(rightLampX, lampsY, rightLampHaloSize, rightLampHaloSize);
}
