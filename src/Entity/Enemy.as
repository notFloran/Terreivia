package Entity
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	
	public class Enemy extends Entity
	{
		
		[Embed(source='../../assets/enemy.png')]
		private const Forme:Class;
		
		public function Enemy() 
		{
			graphic = new Image(Forme);
			
			setHitbox(30, 30);
			
			x = Math.random() * FP.screen.width;
			y = Math.random() * 200;
		}
	
	}
}