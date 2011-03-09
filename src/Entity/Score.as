package Entity 
{
	import net.flashpunk.graphics.Text;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.*;
	import net.flashpunk.FP;
	import net.flashpunk.World; 
	
	public class Score extends Entity
	{
		public static var score:int = 0;
		public static var text:Text =  new Text("Score : " + score, 20, 20, 250, 15);
		
		public function Score() 
		{
			layer = -1200;
			graphic = text;
		}
		
		public static function updateScore(point:int):void
		{
			Score.score += point;
			Score.text.text = "Score : " + score;
			//this.text.updateBuffer(true);
		}
	}

}