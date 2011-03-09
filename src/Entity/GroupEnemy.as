package Entity
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	
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
				var temp:Enemy = new Enemy(this);
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
				e.y += 1;
			}
		}
		
		
		public function destroy(enemy:Enemy):void
		{
			Group.splice(Group.indexOf(enemy),1);
			if (!Group.length)
				FP.world.remove(this);
		}
	
	}
}