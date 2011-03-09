package Entity
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import Entity.Bullet.*;
	

	public class BlackEnemy extends Enemy
	{

		[Embed(source='../../assets/blackenemy.png')]
		private const Forme:Class;

		public function BlackEnemy(group:GroupEnemy = null) 
		{
			
			super(group);
			graphic = new Image(Forme);

		}
		
		override public function update():void
		{
			//Si collision avec une bullet on detruit la bullet + l'enemy
			var b:BlackBullet = collide("blackbullet", x, y) as BlackBullet;
			if (b)
			{
				Score.updateScore(50);
				b.destroy();
				this.destroy();
			}

		}
		
	}
}