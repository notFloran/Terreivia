package Entity 
{
	import Entity.*;
	import Entity.Enemy.*;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.Sfx;
	
	public class Sound extends Entity
	{
		
		[Embed(source = '../../assets/sound/theme.mp3')]
		private static const THEME:Class;
		
		public static var theme:Sfx = new Sfx(THEME);
		
		public function Sound() 
		{
			if (!Sound.theme.playing)
				Sound.theme.loop(0.3);
			
		}
		
	}

}