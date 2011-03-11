
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
 
            var title:Text = new Text("Welcome to Terreivia!\n Press Space to shoot \n Press G to switch colours \n(Note:You can absorb bullet from opposit colour)\n Press CTRL to shoot a laser when 25% power \nPress Enter to play.");
            title.size = 15;
			FP.screen.color = 0x000000;
            add(new Entity(FP.screen.width / 10 ,FP.screen.height / 2,title));
			
			
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
 