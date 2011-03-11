package Entity.Bullet 
{
	
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Spritemap;
	import Entity.Bullet.*
	import Entity.Enemy.*
	import Entity.*
	/**
	 * ...
	 * @author ...
	 */
	public class WhiteLaser extends Laser
	{
		[Embed(source = '../../../assets/WhiteLaser.png')]
		private const Laser:Class;
		
		public var time:Number = 0;
		private var player:Player;
		
		public var sprLaserSpritemap:Spritemap = new Spritemap(Laser, 480, 640);
		public function WhiteLaser(x:int,y:int) 
		{
			super();
			layer = -1;
			sprLaserSpritemap.add("fire", [0, 1, 2, 3], 6, false);
			sprLaserSpritemap.x =  x - 225;
			sprLaserSpritemap.y = y - 610;
			graphic = sprLaserSpritemap;
		}
		
		override public function update():void
		{
			if (!player)
				player = FP.world.classFirst(Player) as Player;
				
			time += FP.elapsed;
			
			if(time > 1.5)
			{
				sprLaserSpritemap.play("fire");
				sprLaserSpritemap.x =  player.x - 225;
				sprLaserSpritemap.y = player.y - 610;
			}
			
			if (time > 3) {
				var enemyList:Array = [];
				world.getClass(BlackEnemy, enemyList);
				for each(var e:BlackEnemy in enemyList)
				{
					e.destroy();
					Score.updateScore(50);
				}
				destroy();
			}
			
		}
	}

}