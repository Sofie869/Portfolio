void setup() {
  size(950, 400);
  background(200);
}

void draw() {
  background(200);
  drawRef();
  histEvent(80, 200, "1882", "The first surgery to remove a cancerous tumor is performed. The tumor was removed from the paitent's lymph nodes by Dr. William Handley.", true);
  histEvent(190, 260, "1898", "The discovery of radium is made by Marie Curie. This becomes an important element in future cancer treatments.", false);
  histEvent(300, 200, "1949", " The first chemotherapy treatment is approved by the FDA.", true);
  histEvent(410, 260, "1953", "The first person with cancer is completely cured at the National Cancer Institute. ", false);
  histEvent(520, 200, "1956", " The first successful bone marrow transplant is performed on a patient with leukemia.", true);
  histEvent(630, 260, "1971", "Richard Nixon declares a war on cancer. This increases funding for the National Cancer Institute.", false);
  histEvent(740, 200, "1975", "Monoclonal Antibodies are created in vast amounts to effectively target an antigen.", true);
  histEvent(850, 260, "1986", "The first immunotherapy drug is authorized by the FDA.", false);
}

void drawRef() {
  //renders the title
  textSize(35);
  fill(#6FACEA);
  textAlign(CENTER);
  text("History of Oncology: A Timeline", width/2, 50);
  textSize(24);
  text("By: Sofie Smith", width/2, 85);


  //renders the timeline
  stroke(0);
  strokeWeight(2);
  line(50, 230, width-50, 230);

  //renders the range of years
  fill(#0B1A46);
  textSize(19);
  text("1880", 25, 235);
  text("1990", width-25, 235);

  //renders the timeline tic marks
  for (int i=85; i<901; i+=85) {
    line(i, 225, i, 235);
  }
}

//renders the range of years
void histEvent(int x, int y, String title, String detail, boolean top) {
  if (top == true) {
    strokeWeight(2);
    line(x, y, x-20, y+30);
  } else {

    strokeWeight(2);
    fill(#0B1A46);
    line(x, y, x+20, y-30);
  }

  rectMode(CENTER);
  fill(180);
  rect(x, y, 100, 30, 8);
  fill(#0B1A46);
  text(title, x, y+6);
  if (mouseX > x-50 &&  mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
    fill(#4C67B7);
    textSize(17);
    text(detail, width/2, 140);
  }
}
