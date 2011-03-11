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
		public function Niveau() 
		{
			
			//Couleur de fond
			FP.screen.color = 0x808080;
			add(new Powerbar);
			add(new Sound);
			add(new Fond);
			add(new Nuage);
			add(new Score);
			add(new Player);
			
			add(new GestionNiveau);
			
		}
	}
	
}
 