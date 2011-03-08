package Entity
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import flash.net.URLRequest;
	import flash.display.Loader;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.Event;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Floran
	 */
	public class GoogleMaps extends Entity
	{
		private var loader:Loader;
		private var latitude:Number = 48.856667;
		private var longitude:Number = 2.350987;
		public var time:Number = 0;
		
		public function GoogleMaps() 
		{
			loader = new Loader();
			var url:String = "http://maps.google.com/maps/api/staticmap?center=" + latitude + "," + longitude + "&maptype=satellite&zoom=16&size=480x640&sensor=false";
			var urlRequest:URLRequest = new URLRequest(url);
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadedGraphic);
			loader.load(urlRequest);
		}
		
		private function loadedGraphic (e:Event):void{
			var btmp:Bitmap = Bitmap(loader.content);
			var bitmapData:BitmapData = btmp.bitmapData;
					
			graphic = new Image(bitmapData);
		}
		
		override public function update():void 
		{
			/*time += FP.elapsed;
			y = y +1;
			if (time >= 1)
			{
				trace("modif" + latitude);
				latitude = latitude + 0.001;
				loader = new Loader();
				var url:String = "http://maps.google.com/maps/api/staticmap?center=" + latitude + "," + longitude + "&maptype=satellite&zoom=16&size=480x640&sensor=false";
				var urlRequest:URLRequest = new URLRequest(url);
				loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadedGraphic);
				loader.load(urlRequest);
				time = 0;
				
			}*/
		}
	
		
	}

}