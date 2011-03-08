
package  
{
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;
	import com.google.maps.LatLng;
	import com.google.maps.Map;
	import com.google.maps.MapEvent;
	import com.google.maps.MapType;
	import flash.events.Event;
	import flash.geom.Point; 
	
	public class MyWorld extends World
	{
		
		var map:Map;
		
		public function MyWorld() 
		{

			/*var map:Map = new Map();
			map.key = "ABQIAAAA1JaGE_IVnKmThPpIoZ5yLRQUH7KqTYu2w3iAS6SH_cEkPPK8_BSZIZ53AO1EcyAQrV8wsBuPWS9r6Q";
			map.sensor = "true";
			map.setSize(new Point(480, 640));
			map.addEventListener(MapEvent.MAP_READY, onMapReady);
			add*/

			add(new GoogleMaps);
			add(new Player);
		}
		

		/*function onMapReady(event:Event):void {
		  map.setCenter(new LatLng(40.736072,-73.992062), 14, MapType.NORMAL_MAP_TYPE);
		}*/

	}
}
 