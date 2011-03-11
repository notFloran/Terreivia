package Entity.Bullet 
{
	
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import Entity.Bullet.*
	import Entity.Enemy.*
	import Entity.*
	/**
	 * ...
	 * @author ...
	 */
	public class BlackLaser extends Laser
	{
		
		[Embed(source = '../../../assets/BlackLaser.png')]
		private const Forme:Class;
		
		public function BlackLaser() 
		{
			super();
			graphic = new Image(Forme);
		}
		
		override public function update():void
		{
			var enemyList:Array;
			world.getClass(WhiteEnemy, enemyList);
			for each(var e:WhiteEnemy in enemyList)
				e.destroy();
			
		}
	}

}