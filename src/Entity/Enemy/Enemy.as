package Entity.Enemy
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Tween;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.tweens.misc.*;
	import net.flashpunk.tweens.motion.*;
	import net.flashpunk.utils.*;

	public class Enemy extends Entity
	{

		private var typeTween:String = "";
		private var tween:Tween;
		private var tweenCircular:CircularMotion;
		private var tweenLinear:LinearMotion;
		import net.flashpunk.utils.*;
		
		// Si l'ennemie est dans un groupe
		private var Group:GroupEnemy;
		private var Leader:Boolean;
		
		private var posX:int;
		private var posY:int;
		
		private var deplacementX:int;
		private var deplacementY:int;
		
		private var mouv:String;

		public function Enemy(mouv:String = "", group:GroupEnemy = null) 
		{
			this.Group = group;
			this.mouv = mouv;
			type = "enemy";
			setHitbox(40, 25);
		}
		public function setX(x1:int):void
		{
			x = x1;
			posX = x1;
		}
		public function setY(y1:int):void
		{
			y = y1;
			posY = y1;
		}
		
		public function goMouv():void {
			if(mouv == "Circular") mouvCircular();
			else if(mouv == "Linear") mouvLinear();
		}

		public function destroy():void
		{
			if (Group != null) Group.destroy(this);
			FP.world.remove(this);
		}
		
		public function mouvLinear():void {
			typeTween = "Linear";
			tweenLinear = new LinearMotion(relancerMouv);
			tweenLinear.setMotion(posX, posY, Math.random() * FP.screen.width, FP.screen.height,10);
			tween = tweenLinear;
			FP.world.addTween(tweenLinear,true);
		}
		
		public function mouvCircular():void {
			FP.log(posX + " " + posY);
			typeTween = "Circular";
			tweenCircular = new CircularMotion(relancerMouv);
			tweenCircular.setMotion(posX,-posY,100,0,true,10);
			tween = tweenCircular;
			FP.world.addTween(tweenCircular,true);
		}
		
		public function relancerMouv():void {
			tween.start();
		}
		
		public function updateEnemy():void {

			deplacementY += 1;			
			
			if(typeTween == "Linear") {
				
				x = tweenLinear.x;
				y = tweenLinear.y;
				
			}
			else if(typeTween == "Circular") {

				x = tweenCircular.x;
				y = tweenCircular.y + deplacementY;
				
			}
			else {
				x += 1;
			}
			
		}
		
	}
}