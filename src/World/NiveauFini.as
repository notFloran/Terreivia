
package World
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.World;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import Entity.Score;
	
	public class NiveauFini extends World
	{
		
		public function NiveauFini() 
		{
 
            var title:Text = new Text("Good game !\n\nVotre score : " + Score.score + "\n\n Entrer pour retourner au menu");
			FP.screen.color = 0x000000;
            title.size = 15;
            add(new Entity(FP.screen.width / 3,FP.screen.height / 2,title));
			
		}
		
		override public function update():void 
		{
	
			if (Input.check(Key.ENTER))
			{
				FP.world = new Menu;
			}
		}


	}
}
 