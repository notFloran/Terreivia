package  
{
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;
	
	public class Niveau extends World
	{
		
		public function Niveau() 
		{
			add(new GoogleMaps);
			add(new Player);
		}


	}
}
 