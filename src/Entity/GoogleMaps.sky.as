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
	import GoogleMaps.*;

	/**
	 * ...
	 * @author Floran
	 */
	public class GoogleMaps extends Entity
	{
		public var time:Number = 0;
		private var map:Map;
		
		public function GoogleMaps() 
		{

			map = new Map();
			map.key = "ABQIAAAA1JaGE_IVnKmThPpIoZ5yLRQUH7KqTYu2w3iAS6SH_cEkPPK8_BSZIZ53AO1EcyAQrV8wsBuPWS9r6Q";
			map.sensor = "false";
			map.setSize(new Point(FP.screen.width, FP.screen.height));
			//map.addEventListener(MapEvent.MAP_READY, onMapReady);
			map.addEventListener(MapEvent.MAP_PREINITIALIZE, onMapPreinitialize);
			map.visible = false;

			FP.stage.addChild(map);
		}
		
		public function onMapReady(event:Event):void {
			map.setCenter(new LatLng(40.736072, -73.992062), 14, MapType.NORMAL_MAP_TYPE);
		}
		
		public function onMapPreinitialize(event:Event):void {
			var opts:MapOptions = new MapOptions();
            opts.mapTypes = [Sky.VISIBLE_MAP_TYPE];
            opts.center = new LatLng(69.35708, 30.9375);
			map.setInitOptions(opts);
		}
		
		override public function update():void 
		{
			
			if (Input.check(Key.G))
			{
				var bitmapData:BitmapData = map.getPrintableBitmap().bitmapData;
				graphic = new Image(bitmapData);
			}
			
		}
	
		
	}

}