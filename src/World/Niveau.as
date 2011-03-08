package World
{
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;
	import Entity.*;
	
	public class Niveau extends World
	{
		
		public function Niveau() 
		{
			add(new GoogleMaps);
			add(new Player);
		}


	}
}
 