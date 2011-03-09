package Entity
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import Entity.Bullet.*;
	import Entity.*;

	public class WhiteEnemy extends Enemy
	{

		[Embed(source='../../assets/whiteenemy.png')]
		private const Forme:Class;

		public function WhiteEnemy(group:GroupEnemy = null) 
		{
			
			super(group);
			graphic = new Image(Forme);

		}
		
		override public function update():void
		{
			//Si collision avec une bullet on detruit la bullet + l'enemy
			var b:WhiteBullet = collide("whitebullet", x, y) as WhiteBullet;
			if (b)
			{
				Score.updateScore(50);
				b.destroy();
				this.destroy();
			}

		}
		
	}
}