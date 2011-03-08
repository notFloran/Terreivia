package Entity
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	
	public class Player extends Entity
	{
		[Embed(source='../../assets/forme1.png')]
		private const Forme1:Class;
		
		[Embed(source='../../assets/forme2.png')]
		private const Forme2:Class;
		
		private var formeActuelle:int = 1;
		
		public function Player() 
		{
			// Input
			Input.define("Change", Key.G);
			
			// Placement
			x = FP.screen.width / 2;
			y = FP.screen.height - 100;
			
			ChangementForme();
			
		}
		
		private function ChangementForme():void {
			var image:Image = new Image(this["Forme"+formeActuelle]);
			graphic = image;
			
			// hitbox = width/height
			width = image.width;
			height = image.height;
			
		}
		
		override public function update():void 
		{
			
			if (Input.check(Key.LEFT) && x > 0)
			{
				x -= 3;
			}

			if (Input.check(Key.RIGHT) && x < FP.screen.width - width)
			{
				x += 3;
			}

			if (Input.check(Key.UP) && y > 0)
			{
				y -= 3;
			}
			
			if (Input.check(Key.DOWN) && y < FP.screen.height - height)
			{
				y += 3;
			}
			
			if (Input.pressed("Change"))
			{
				if (formeActuelle == 1)
					formeActuelle = 2;
				else 
					formeActuelle = 1;
				
				ChangementForme();
			}
			
			/*if (collide("mechant", x, y))
			{

			}*/
		}
	}
}