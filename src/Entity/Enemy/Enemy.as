package Entity.Enemy
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;

	public class Enemy extends Entity
	{

		// Si l'ennemie est dans un groupe
		private var Group:GroupEnemy;
		private var Leader:Boolean;

		public function Enemy(group:GroupEnemy = null) 
		{
			this.Group = group;
			type = "enemy";
			setHitbox(40, 25);
		}
		public function setX(x1:int):void
		{
			x = x1;
		}
		public function setY(y1:int):void
		{
			y = y1;
		}

		public function destroy():void
		{
			if (Group != null) Group.destroy(this);
			FP.world.remove(this);
		}
		
	}
}