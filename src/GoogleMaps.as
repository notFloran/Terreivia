package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import flash.net.URLRequest;
	import flash.display.Loader;
	
	/**
	 * ...
	 * @author Floran
	 */
	public class GoogleMaps extends Entity
	{
		
		public function GoogleMaps() 
		{
			var url:String = "http://maps.google.com/maps/api/staticmap?center=40.714728,-73.998672&zoom=12&size=400x400&sensor=false";
			var urlRequest:URLRequest = new URLRequest(url);
			var loader:Loader = new Loader();
			loader.load(urlRequest);
			graphic = new Image(loader.content);
		}
	
		
	}

}