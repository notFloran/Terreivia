package  
{

	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import World.*;
	import net.flashpunk.utils.*;
	
	public class Main extends Engine
	{
		
		public function Main() 
		{
			super(480, 640, 60, false);

			FP.world = new Menu;
			FP.console.enable();
			
			FP.console.toggleKey = Key.T;
		}
		
	}
}