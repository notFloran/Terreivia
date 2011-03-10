package Entity
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import Entity.Bullet.*
	import Entity.*
	import World.GameOver;
	public class Player extends Entity
	{
		[Embed(source='../../assets/forme1.png')]
		private const Forme1:Class;
		
		[Embed(source='../../assets/forme2.png')]
		private const Forme2:Class;
		private var bar:Powerbar;
		private var formeActuelle:int = 1;
		
		public function Player() 
		{			
			
			// Input
			Input.define("ChangeForme", Key.G);
			Input.define("Fire", Key.SPACE);
			
			// Placement
			x = FP.screen.width / 2;
			y = FP.screen.height - 100;
			
			ChangementForme();
			setHitbox(10, 30,-15);
		}
		
		private function ChangementForme():void {
			var image:Image = new Image(this["Forme"+formeActuelle]);
			graphic = image;
			
			// hitbox = width/height
			width = image.width;
			height = image.height;
			setHitbox(10, 30);
		}
		
		override public function update():void 
		{
			if (!bar) bar = FP.world.classFirst(Powerbar) as Powerbar;
				
			//Test mort
			if (formeActuelle == 1 && collide("blackbullet", x, y))
				FP.world = new GameOver;
			if (formeActuelle == 2 && collide("whitebullet", x, y))
				FP.world = new GameOver;
				
			if (collide("enemy", x, y))
				FP.world = new GameOver;
			//Test absorption boule
			var temp:WhiteBullet = collide("whitebullet", x, y) as WhiteBullet;
			if (formeActuelle == 1 && temp)
			{
				bar.maj(2);
				temp.destroy();
	
				}
			
			var temp2:BlackBullet = collide("blackbullet", x, y) as BlackBullet;
			if (formeActuelle == 2 && temp2)
			{
				bar.maj(2);
				temp2.destroy();
			}
			//Test input
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
			//Test changement forme
			if (Input.pressed("ChangeForme"))
			{
				if (formeActuelle == 1)
					formeActuelle = 2;
				else 
					formeActuelle = 1;
				
				ChangementForme();
			}
			//Test tir
			if (Input.pressed("Fire"))
			{
				if(formeActuelle == 1)
					FP.world.add(new WhiteBullet(x+width/2, y-height-1,Bullet.UP));
				else
					FP.world.add(new BlackBullet(x+width/2, y-height-1,Bullet.UP));
			}

		}
	}
}