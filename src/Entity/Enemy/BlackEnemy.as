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
			graphic = new Image(Forme);

		}
		
		override public function update():void
		{
			time += FP.elapsed;
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
				FP.world.add(new BlackBullet(x, y,Bullet.DOWN));
				time = 0;
			}
		}
		
	}
}