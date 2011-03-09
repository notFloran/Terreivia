package
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.Event;
	import flash.geom.Point;
	
	import net.flashpunk.FP;
	
	import com.google.maps.LatLng;
	import com.google.maps.Map;
	import com.google.maps.MapEvent;
	import com.google.maps.MapType;

	public class GoogleMaps
	{

		private var latitude:Number = 40.736072;
		private var longitude:Number = -73.992062;
		private var map:Map;
		private var mapOk:Boolean = false;
		private var bitmap:BitmapData;
		
		public function GoogleMaps()
		{

			map = new Map();
			map.key = "ABQIAAAA1JaGE_IVnKmThPpIoZ5yLRQUH7KqTYu2w3iAS6SH_cEkPPK8_BSZIZ53AO1EcyAQrV8wsBuPWS9r6Q";
			map.sensor = "false";
			map.setSize(new Point(480, 640));
			map.addEventListener(MapEvent.MAP_READY, onMapReady);
			map.visible = false;

			FP.stage.addChild(map);
		}
		
		public function onMapReady(event:Event):void {
			map.setCenter(new LatLng(latitude, longitude), 16, MapType.SATELLITE_MAP_TYPE);
			mapOk = true;
		}
		
		
		/*override public function update():void 
		{
			
			time += FP.elapsed;
			
			if (mapOk && time > 0.08) {
				time = 0;
				bitmap = map.getPrintableBitmap().bitmapData;
				
				latitude += 0.00005;
				map.panTo(new LatLng(latitude, longitude));
			}
		}*/
	
		
	}

}