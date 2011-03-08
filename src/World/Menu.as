
package World
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.World;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	
	public class Menu extends World
	{
		
		public function Menu() 
		{
 
            var title:Text = new Text("Terreivia!\nPress Enter to play.");
            title.size = 15;
            add(new Entity(FP.screen.width / 3,FP.screen.height / 2,title));
			
			
		}
		
		override public function update():void 
		{
	
			if (Input.check(Key.ENTER))
			{
				FP.world = new Niveau;
			}
		}


	}
}
 