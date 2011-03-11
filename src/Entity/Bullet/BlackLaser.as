package Entity.Bullet 
{
	
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import Entity.Bullet.*
	import Entity.Enemy.*
	import net.flashpunk.graphics.Spritemap;
	import Entity.*
	/**
	 * ...
	 * @author ...
	 */
	public class BlackLaser extends Laser
	{
		
		[Embed(source = '../../../assets/BlackLaser.png')]
		private const Laser:Class;
		
		private var player:Player;
		public var time:Number = 0;
		
		public var sprLaserSpritemap:Spritemap = new Spritemap(Laser, 480, 640);
		public function BlackLaser(x:int,y:int) 
		{
			super();
			sprLaserSpritemap.add("fire", [0, 1, 2, 3], 7, false);
			sprLaserSpritemap.x =  x - 225;
			sprLaserSpritemap.y = y - 610;
			graphic = sprLaserSpritemap;
			
		}
		
		override public function update():void
		{
			if (!player)
				player = FP.world.classFirst(Player) as Player;
				
			time += FP.elapsed;
			
			sprLaserSpritemap.play("fire");
			sprLaserSpritemap.x =  player.x - 225;
			sprLaserSpritemap.y = player.y - 610;
			if (time > 0.8) {
				var enemyList:Array = [];
				FP.world.getClass(WhiteEnemy, enemyList);
				for each(var e:WhiteEnemy in enemyList)
				{
					e.destroy();
					Score.updateScore(50);
				}
				destroy();
			}
			
		}
	}

}