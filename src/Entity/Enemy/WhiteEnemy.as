package Entity.Enemy
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import Entity.Bullet.*;
	import Entity.*;

	public class WhiteEnemy extends Enemy
	{

		[Embed(source='../../../assets/whiteenemy.png')]
		private const Forme:Class;
		private var time:Number = 0;

		public function WhiteEnemy(group:GroupEnemy = null) 
		{
			
			super(group);
			graphic = new Image(Forme);

		}
		
		override public function update():void
		{
			time += FP.elapsed;
			//Si collision avec une bullet on detruit la bullet + l'enemy
			var b:BlackBullet = collide("blackbullet", x, y) as BlackBullet;
			if (b)
			{
				Score.updateScore(50);
				b.destroy();
				this.destroy();
			}
			
			if (time > 1)
			{
				FP.world.add(new WhiteBullet(x, y,Bullet.DOWN));
				time = 0;
			}

		}
		
	}
}