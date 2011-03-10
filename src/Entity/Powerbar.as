package Entity 
{
	
	import flash.geom.Rectangle;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	public class Powerbar extends Entity
	{
		[Embed(source='../../assets/PowerBar.png')]
		private const Bar:Class;
		public var power:int = 0;
		public function Powerbar() 
		{
			layer = -500;
		}
		public function maj(increase:int):void
		{
				if (power + increase > 100) power = 100;
				else
				{
					if (power + increase < 0) power = 0;
					else power += increase;
				}
				var image:Image = new Image(Bar,new Rectangle(0,400-4*power,30,400));
				image.alpha = 0.9;
				image.x = 450;
				image.y = 120+4*(100-power);
				graphic = image;
		}
		
	}

}