
package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class Player extends Entity
	{
		[Embed(source='../assets/player.png')]
		private const PLAYER1:Class;
		
		[Embed(source='../assets/vaisseau.png')]
		private const PLAYER2:Class;
		
		
		public var mort:int = 0;
		
		public function Player() 
		{
			graphic = new Image(PLAYER1);
			
			// Here I set the hitbox width/height with the setHitbox function.
			setHitbox(50, 50);
			
			// Here I do the same thing by just assigning Player's properties.
			width = 42;
			height = 21;
		}
		
		override public function update():void 
		{
			trace(x + " - " + y);
			
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
			
			if (Input.check(Key.G))
			{
				graphic = new Image(PLAYER2);
			}
			
			if (collide("mechant", x, y))
			{
				mort = mort + 1;
			}
		}
	}
}