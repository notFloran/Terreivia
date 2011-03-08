package Entity 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	
	public class Bullet extends Entity
	{
		
		[Embed(source='../../assets/bullet.png')]
		private const Forme:Class;
		
		public function Bullet(posX:int = 0, posY:int = 0) 
		{
			
			graphic = new Image(Forme);
			
			setHitbox(10, 10);
			
			x = posX;
			y = posY;
			
			type = "bullet";
		}
		
		override public function update():void 
		{
			if (y < 0)
				destroy();
			
			y -= 1;
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