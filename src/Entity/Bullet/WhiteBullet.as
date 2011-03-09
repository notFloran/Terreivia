package Entity.Bullet 
{
	
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author ...
	 */
	public class WhiteBullet extends Bullet 
	{
		[Embed(source='../../../assets/WhiteBullet.png')]
		private const Forme:Class;
		
		public function WhiteBullet(x:int, y:int, orientation:int) 
		{
			super(x, y, orientation);
			
			graphic = new Image(Forme);
			setHitbox(10, 10);
			
			type = "whitebullet";
			
			
		}
		
	}

}