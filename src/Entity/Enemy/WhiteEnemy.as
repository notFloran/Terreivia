package Entity.Enemy
{
	import Entity.*;
	import Entity.Bullet.*;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Tween;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;

	public class WhiteEnemy extends Enemy
	{

		[Embed(source='../../../assets/whiteenemy.png')]
		private const Forme:Class;
		private var time:Number = 0;


		public function WhiteEnemy(mouv:String, group:GroupEnemy = null) 
		{
			super(mouv,group);
			
			var image:Image =  new Image(Forme);
			
			graphic = new Image(Forme);
			
			height = image.height;
			width = image.width;
			
			if(mouv == "Circular") mouvCircular();
			else if(mouv == "Linear") mouvLinear();
		}

		
		override public function update():void
		{
			time += FP.elapsed;
			
			updateEnemy();
			
			// Hors de l'écran
			if (y > FP.screen.height)	this.destroy();
			
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
				FP.world.add(new WhiteBullet(x+width/2, y+height+1,Bullet.DOWN,true));
				time = 0;
			}

		}
		
	}
}