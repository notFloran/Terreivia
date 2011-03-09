package Entity
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	

	public class WhiteEnemy extends Enemy
	{

		[Embed(source='../../assets/whiteenemy.png')]
		private const Forme:Class;

		public function WhiteEnemy(group:GroupEnemy = null) 
		{
			
			super(group);
			graphic = new Image(Forme);

		}
		
	}
}