
package  
{
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;
	
	public class MyWorld extends World
	{
		
		public var score:int = 0;
		
		public function MyWorld() 
		{
			add(new GoogleMaps);
			add(new Player);
			add(new Mechant);
		}

	}
}
 