public static final int bacNum = 15;

Bacteria[] coleIsGod = new Bacteria[bacNum];
 void setup()   
 {  
 	for(int i=0;i<bacNum;i++)
 	{
 		coleIsGod[i]=new Bacteria(i*5,i*5);
 	}   
 	size(screen.width, screen.height);
 } 
 void draw()
 {
 	background(200);
 	for(int i=0;i<bacNum;i++)
 	{
 		coleIsGod[i].walk();
 		fill(100);
 		for(int j = i + 1; j < bacNum; j++)
 		{
	 		line(coleIsGod[i].bacteriaX,coleIsGod[i].bacteriaY,coleIsGod[j].bacteriaX,coleIsGod[j].bacteriaY);
	 	}
 	} 
 	for(int i=0;i<bacNum;i++)
 	{
 		fill(255);
 		coleIsGod[i].show();
 	}
 }
 class Bacteria
 {
 	int bacteriaX, bacteriaY, pallet;
 	Bacteria(int x, int y)
 	{
 		bacteriaX = 400+(int)(Math.random()*10);
 		bacteriaY = 400+(int)(Math.random()*10);
 		pallet = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 	}
 	void walk()
 	{
 		bacteriaX +=(int)(Math.random()*7)-3;
		bacteriaY +=(int)(Math.random()*7)-3;
 	}
 	void show()
 	{
 		fill(pallet);
 		ellipse(bacteriaX,bacteriaY,15,15);
 	}
 }