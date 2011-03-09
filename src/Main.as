package  
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import World.*;
	
		import com.google.maps.LatLng;
	import com.google.maps.Map;
	import com.google.maps.MapEvent;
	import com.google.maps.MapType;
	import flash.geom.Point;
	import flash.events.Event;
	
	public class Main extends Engine
	{
		private var map:Map;
		
		public function Main() 
		{
			
			super(480, 640, 60, false);
			FP.world = new Menu;
		}

		

		
	}
}