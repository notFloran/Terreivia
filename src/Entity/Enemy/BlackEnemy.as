package Entity.Enemy
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import Entity.Bullet.*;
	import Entity.*;
	

	public class BlackEnemy extends Enemy
	{

		[Embed(source='../../../assets/blackenemy.png')]
		private const Forme:Class;
		private var time:Number = 0;
		


		public function BlackEnemy(group:GroupEnemy = null) 
		{
			
			super(group);
			var image:Image =  new Image(Forme);
			graphic = image;
			
			height = image.height;
			width = image.width;
		}
		
		override public function update():void
		{
			time += FP.elapsed;
			
			// Hors de l'écran
			if (y > FP.screen.height)	this.destroy();
			
			//Si collision avec une bullet on detruit la bullet + l'enemy
			var b:WhiteBullet = collide("whitebullet", x, y) as WhiteBullet;
			if (b)
			{
				Score.updateScore(50);
				b.destroy();
				this.destroy();
			}
			if (time > 1)
			{
				FP.world.add(new BlackBullet(x+width/2, y+height+1,Bullet.DOWN));
				time = 0;
			}
		}
		
	}
}