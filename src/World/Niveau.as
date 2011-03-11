package World
{

	import Entity.*;
	import Entity.Enemy.*;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.Sfx;
	

	
	public class Niveau extends World
	{
		[Embed(source = '../../assets/sound/theme.mp3')]
		private const THEME:Class;
		
		public var theme:Sfx = new Sfx(THEME);
		public function Niveau() 
		{
			theme.loop(0.3);
			//Couleur de fond
			FP.screen.color = 0x808080;
			add(new Powerbar);
			add(new Fond);
			add(new Nuage);
			add(new Score);
			add(new Player);
			
			add(new GestionNiveau);
			
		}
		
		
	}
}
 