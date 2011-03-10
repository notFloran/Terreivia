package Entity
{
	import com.google.maps.MapOptions;
	
	import flash.display.*;
	import flash.events.Event;
	import flash.geom.Point;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;

	/**
	 * ...
	 * @author Floran
	 */
	public class Nuage extends Entity
	{
		
		private var bitmap:BitmapData;
		private var _offset:Number=0;
		
		public function Nuage() 
		{
			bitmap = new BitmapData(FP.stage.width,FP.stage.height,true,0x00CCCCCC);

			graphic = new Image(bitmap);

		}	
		
		override public function update():void 
		{
			var point:Point=new Point(this._offset,0);
			this.bitmap.perlinNoise(300,100,2,1000,false,
				true,BitmapDataChannel.ALPHA,true,
				[point,point]);
			this._offset+=2;
		
			
			graphic = new Image(bitmap);
		}
		
	}

}