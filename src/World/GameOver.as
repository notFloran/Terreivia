
package World
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.World;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	
	public class GameOver extends World
	{
		
		public function GameOver() 
		{
 
            var title:Text = new Text("FAIL !\nPress Enter to play.");
			FP.screen.color = 0xFF0000;
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
 