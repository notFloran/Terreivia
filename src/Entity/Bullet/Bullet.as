package Entity.Bullet 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	
	public class Bullet extends Entity
	{
		public static const UP:int = 5;
		public static const DOWN:int = -5;
		private var orientation:int;
		
		public function Bullet(posX:int, posY:int, orientation:int ) 
		{			
			x = posX;
			y = posY;
			
			this.orientation = orientation;
		}
		
		override public function update():void 
		{
			if (y < 0 || y > FP.screen.height) destroy();
	
			y -= orientation;
		}
	
		/*
		 * Destructeur
		 */
		public function destroy():void
		{	
			FP.world.remove(this);
		}
	}
}