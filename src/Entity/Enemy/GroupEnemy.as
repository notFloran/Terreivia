package Entity.Enemy
{
	import Entity.*;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;

	import net.flashpunk.utils.*;
	
	public class GroupEnemy extends Entity
	{
		
		private var Group:Array = new Array();
		
		public function GroupEnemy() 
		{
			
		}
		
		public function createGroup(nombre:int, type:String, spawnX:int, spawnY:int, mouv:String):void
		{
			FP.log("Creation group" + mouv);
			for (var i:int = 0 ; i < nombre; i++)
			{
				var temp:Enemy = type == "White" ? new WhiteEnemy(mouv, this) : new BlackEnemy(mouv, this);
				
				
				if(mouv == "Circular") {
					temp.setX(spawnX + i * 100);
					temp.setY(spawnY - i * temp.height + i * 100);
				}
				else {
					temp.setX(spawnX);
					temp.setY(spawnY - i * temp.height);
				}
				
				temp.goMouv();
				
				this.world.add(temp);
				this.Group.push(temp);
			}

		}
		
		
		public function destroy(enemy:Enemy):void
		{
			Group.splice(Group.indexOf(enemy),1);
			if (!Group.length) {
				FP.world.remove(this);
			}
		}
	
	}
}