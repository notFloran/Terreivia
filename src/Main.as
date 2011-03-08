package  
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	public class Main extends Engine
	{
		
		
		public function Main() 
		{
			super(480, 640, 60, false);
			
			FP.world = new MyWorld;
		}
		

		
	}
}