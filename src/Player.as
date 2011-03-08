
package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class Player extends Entity
	{
		[Embed(source='../assets/player.png')]
		private const PLAYER:Class;
		
		public var mort:int = 0;
		
		public function Player() 
		{
			graphic = new Image(PLAYER);
			
			// Here I set the hitbox width/height with the setHitbox function.
			setHitbox(50, 50);
			
			// Here I do the same thing by just assigning Player's properties.
			width = 50;
			height = 50;
		}
		
		override public function update():void 
		{
			if (Input.check(Key.LEFT))
			{
				x -= 5;
			}

			if (Input.check(Key.RIGHT))
			{
				x += 5;
			}

			if (Input.check(Key.UP))
			{
				y -= 5;
			}
			
			if (Input.check(Key.DOWN))
			{
				y += 5;
			}
			
			if (collide("mechant", x, y))
			{
				mort = mort + 1;
			}
		}
	}
}