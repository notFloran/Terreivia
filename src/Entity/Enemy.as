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
		// Si l'ennemie est dans un groupe
		private var Group:GroupEnemy;
		private var Leader:Boolean;

		public function Enemy(group:GroupEnemy = null) 
		{
			graphic = new Image(Forme);
			this.Group = group;
			setHitbox(30, 30);



		}
		public function setX(x1:int):void
		{
			x = x1;
		}
		public function setY(y1:int):void
		{
			y = y1;
		}

		override public function update():void
		{
			//Si collision avec une bullet on detruit la bullet + l'enemy
			var b:Bullet = collide("bullet", x, y) as Bullet;
			if (b)
			{
				b.destroy();
				this.destroy();
			}
			if(y 


		}

		public function destroy():void
		{
			if (Group != null) Group.destroy(this);
			FP.world.remove(this);
		}
	}
}