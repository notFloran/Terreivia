package Entity.Bullet 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import Entity.Bullet.*
	import Entity.*
	
	public class Laser extends Entity
	{
		private var time:int = 0;
		
		public function Laser() 
		{
			setHitbox(FP.screen.width, FP.screen.height);
		}
		
		override public function update():void
		{
			time += FP.elapsed;
			if (time > 2)
				destroy();
			
		}
		
		public function destroy():void
		{	
			FP.world.remove(this);
		}
	}

}