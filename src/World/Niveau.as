package World
{

	import net.flashpunk.graphics.Text;
	import net.flashpunk.Entity;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;
	import Entity.*;
	import net.flashpunk.FP;
	
	public class Niveau extends World
	{
		
		
		public function Niveau() 
		{
			add(new Fond);
			add(new Score);
			add(new Player);
			
			var groupe1:GroupEnemy = new GroupEnemy();
			var groupe2:GroupEnemy = new GroupEnemy();
			var groupe3:GroupEnemy = new GroupEnemy();
			var groupe4:GroupEnemy = new GroupEnemy();
			add(groupe1);
			add(groupe2);
			add(groupe3);
			add(groupe4);
			groupe1.createGroup(4, "vaisseau",  120 , 0);
			groupe2.createGroup(4, "vaisseau",  20 , 0);
			groupe3.createGroup(5, "vaisseau",  240 , 0);
			groupe4.createGroup(4, "vaisseau",  300 , 0);
			
			add(new Score);
			
		}
		
		
	}
}
 