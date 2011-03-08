package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class Mechant extends Entity
	{
		[Embed(source = '../assets/vaisseau.png')]
		private const MECHANT:Class;
		
		public function Mechant() 
		{
			graphic = new Image(MECHANT);
			
			// Here I set the hitbox width/height with the setHitbox function.
			setHitbox(50, 50);
			type = "mechant";
			
			// Here I do the same thing by just assigning Player's properties.
			width = 50;
			height = 50;
			
			x = Math.random() * 800;
			y = Math.random() * 600;
		}
		
	}
}