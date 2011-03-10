package Entity
{
	import com.google.maps.MapOptions;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.Event;
	import flash.geom.Point;
	
	import com.google.maps.LatLng;
	import com.google.maps.Map;
	import com.google.maps.MapEvent;
	import com.google.maps.MapType;

	/**
	 * ...
	 * @author Floran
	 */
	public class Fond extends Entity
	{
		public var time:Number = 0;
		private var latitude:Number = 48.857339;
		private var longitude:Number = 2.296808;
		private var map:Map;
		private var mapOk:Boolean = false;
		
		public function Fond() 
		{
			map = new Map();
			map.key = "ABQIAAAA1JaGE_IVnKmThPpIoZ5yLRQUH7KqTYu2w3iAS6SH_cEkPPK8_BSZIZ53AO1EcyAQrV8wsBuPWS9r6Q";
			map.sensor = "false";
			map.setSize(new Point(FP.screen.width, FP.screen.height));
			map.addEventListener(MapEvent.MAP_READY, onMapReady);
			map.visible = false;

			FP.stage.addChild(map);
		}
		
		public function onMapReady(event:Event):void {
			map.setCenter(new LatLng(latitude, longitude), 16, MapType.SATELLITE_MAP_TYPE);
			mapOk = true;
		}
		
		override public function update():void 
		{
			time += FP.elapsed;
			
			if (mapOk && time > 0.25) {
				time = 0;
				graphic = new Image(map.getPrintableBitmap().bitmapData);
				
				latitude += 0.00001;
				map.panTo(new LatLng(latitude, longitude));
			}
		}
	
		
	}

}