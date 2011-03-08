
package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class Player extends Entity
	{
		[Embed(source='../assets/forme1.png')]
		private const Forme1:Class;
		
		[Embed(source='../assets/forme2.png')]
		private const Forme2:Class;
		
		private var formeActuelle:int = 1;
		
		public function Player() 
		{
			// Input
			Input.define("Change", Key.G);
			
			
			TransformationForme();
			
		}
		
		private function TransformationForme() {
			var image:Image = new Image(this["Forme"+formeActuelle]);
			graphic = image;
			
			width = image.width;
			height = image.height;
			trace(width + " - " + height);
			
			setHitbox(20, 20);
		}
		
		override public function update():void 
		{
			
			if (Input.check(Key.LEFT) && x > 0)
			{
				x -= 3;
			}

			if (Input.check(Key.RIGHT) && x < 480 - width)
			{
				x += 3;
			}

			if (Input.check(Key.UP) && y > 0)
			{
				y -= 3;
			}
			
			if (Input.check(Key.DOWN) && y < 640 - height)
			{
				y += 3;
			}
			
			if (Input.pressed("Change"))
			{
				if (formeActuelle == 1)
					formeActuelle = 2;
				else 
					formeActuelle = 1;
				
				TransformationForme();
			}
			
			/*if (collide("mechant", x, y))
			{

			}*/
		}
	}
}