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
	public class WhiteLaser extends Laser
	{
		[Embed(source='../../../assets/WhiteLaser.png')]
		private const Forme:Class;
		public function WhiteLaser() 
		{
			super();
			graphic = new Image(Forme);
		}
		
		override public function update():void
		{
			var enemyList:Array = new Array;
			world.getClass(BlackEnemy, enemyList);
			for each(var e:BlackEnemy in enemyList)
				e.destroy();
			
		}
	}

}