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
			var enemyList:Array;
			sprLaserSpritemap.play("fire");
			world.getClass(WhiteEnemy, enemyList);
			for each(var e:WhiteEnemy in enemyList)
				e.destroy();
			
		}
	}

}