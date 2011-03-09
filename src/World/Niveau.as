package World
{
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;
	import Entity.*;
	import net.flashpunk.FP;
	
	public class Niveau extends World
	{
		
		public function Niveau() 
		{
			add(new GoogleMaps);
			add(new Player);
			
			var groupe:GroupEnemy = new GroupEnemy();
			add(groupe);
			groupe.createGroup(4, "vaisseau",  0 , 0);
		}

	}
}
 