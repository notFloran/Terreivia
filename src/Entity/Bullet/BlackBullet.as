package Entity.Bullet
{
	/**
	 * ...
	 * @author ...
	 */
	
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import Entity.Bullet.*;
	import Entity.*;
	
	public class BlackBullet extends Bullet 
	{
		[Embed(source='../../../assets/BlackBullet.png')]
		private const Forme:Class;
		
		public function BlackBullet(x:int, y:int) 
		{
			graphic = new Image(Forme);
			setHitbox(10, 10);
			
			this.x = x;
			this.y = y;
			
			type = "blackbullet";
			
			
		}

		
	}
		
}

