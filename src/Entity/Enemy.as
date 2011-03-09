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
		public var vies:int = 3;
		
		/**
		 * Constructeur
		 */
		public function Enemy() 
		{
			graphic = new Image(Forme);
			
			setHitbox(30, 30);
			
			x = Math.random() * FP.screen.width;
			y = Math.random() * 200;
		}
		
		override public function update():void 
		{
			
			var b:Bullet = collide("bullet", x, y) as Bullet;
			
			if (b)
			{
				vies--;
				b.destroy();
				
				if (vies == 0)
					destroy();
			}
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