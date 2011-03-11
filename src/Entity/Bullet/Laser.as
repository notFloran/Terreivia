package Entity.Bullet 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import Entity.Bullet.*
	import Entity.*
	import net.flashpunk.Sfx;
	
	public class Laser extends Entity
	{
		private var time:int = 0;
			[Embed(source = '../../../assets/sound/lazor.mp3')]
		private const SHOOT:Class;
		
		public var shoot:Sfx = new Sfx(SHOOT);
		public function Laser() 
		{
			shoot.play();
			setHitbox(FP.screen.width, FP.screen.height);
		}
		
		
		public function destroy():void
		{	
			FP.world.remove(this);
		}
	}

}