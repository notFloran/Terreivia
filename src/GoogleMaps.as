package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import flash.net.URLRequest;
	import flash.display.Loader;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Floran
	 */
	public class GoogleMaps extends Entity
	{
		var loader:Loader = new Loader();
		
		public function GoogleMaps() 
		{
			var url:String = "http://maps.google.com/maps/api/staticmap?center=48.856667,2.350987&maptype=satellite&zoom=16&size=480x640&sensor=false";
			var urlRequest:URLRequest = new URLRequest(url);
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadedGraphic);
			loader.load(urlRequest);
		}
		
		private function loadedGraphic (e:Event):void{
			var btmp:Bitmap = Bitmap(loader.content);
			var bitmapData:BitmapData = btmp.bitmapData;
					
			graphic = new Image(bitmapData);
		}
	
		
	}

}