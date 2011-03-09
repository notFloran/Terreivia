package Entity.Enemy
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import Entity.*;
	public class GroupEnemy extends Entity
	{
		
		private var Group:Array = new Array();
		
		public function GroupEnemy() 
		{
		}
		
		public function createGroup(nombre:int, type:String, spawnX:int, spawnY:int):void
		{
			for (var i:int = 0 ; i < nombre; i++)
			{
				var temp:Enemy = type == "White" ? new WhiteEnemy(this) : new BlackEnemy(this);
				temp.setX(spawnX);
				temp.setY(spawnY - i * temp.height);
				this.world.add(temp);
				this.Group.push(temp);
			}
		}
		override public function update():void
		{
			for each(var e:Enemy in Group)
			{
				var player:Entity = world.classFirst(Player);
				//if ( player.x > e.x ) e.x += 1;
				//if ( player.x < e.x ) e.x -= 1;
				e.y += 1;
			}
		}
		
		
		public function destroy(enemy:Enemy):void
		{
			Group.splice(Group.indexOf(enemy),1);
			if (!Group.length) FP.world.remove(this);
		}
	
	}
}