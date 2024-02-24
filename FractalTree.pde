private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .1;  
public void setup() 
{   
  size(700,700);    
  noLoop(); 
} 
public void draw() 
{   
  background(13,245,255);  
  stroke(100,76,7);
  strokeWeight(50);
  line(360,800,360,600); 
  stroke(12,118,18);   
  strokeWeight(3);
  drawBranches(360,600,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1=angle+branchAngle;
  double angle2=angle-branchAngle;
  int endX1=(int)(branchLength*Math.cos(angle1) + x);
  int endY1=(int)(branchLength*Math.sin(angle1) + y);
  int endX2=(int)(branchLength*Math.cos(angle2) + x);
  int endY2=(int)(branchLength*Math.sin(angle2) + y);
  branchLength=branchLength*fractionLength;
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  if(branchLength>smallestBranch){
   drawBranches(endX1,endY1,branchLength+1,angle+.5);
   drawBranches(endX2,endY2,branchLength+1,angle-.5);
  }
} 
