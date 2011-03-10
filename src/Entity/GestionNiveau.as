package Entity
{

	import Entity.Enemy.*;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.utils.*;

	/**
	 * ...
	 * @author Floran
	 */
	public class GestionNiveau extends Entity
	{
		public var time:Number = 0;
		private var Evenements:Array = new Array();
		
		public function GestionNiveau () 
		{
			
			var Evenement:Object = new Object();
			Evenement["nombre"] = 4;
			Evenement["type"] = "Black";
			Evenement["x"] = 20;
			Evenement["y"] = 0;
			Evenement["time"] = 5;
			Evenements.push(Evenement);
			
			var Evenement:Object = new Object();
			Evenement["nombre"] = 4;
			Evenement["type"] = "White";
			Evenement["x"] = 200;
			Evenement["y"] = 0;
			Evenement["time"] = 5;
			Evenements.push(Evenement);
			
			var Evenement:Object = new Object();
			Evenement["nombre"] = 5;
			Evenement["type"] = "White";
			Evenement["x"] = 200;
			Evenement["y"] = 0;
			Evenement["time"] = 15;
			Evenements.push(Evenement);
			
			/*var xml:XML = <root>
				<Evenement time="10" nombre="4" type="White" x="20" y="0" />
				<Evenement time="10" nombre="3" type="Black" x="200" y="0" />
				<Evenement time="30" nombre="2" type="Black" x="60" y="0" />
			</root>;
			
			for(var i:String in xml.Evenement) {
				var Evenement:Object = new Object();
				Evenement["nombre"] = xml.Evenement[i].@name;
				Evenement["type"] = xml.Evenement[i].@name;
				Evenement["x"] = xml.Evenement[i].@x;
				Evenement["y"] = xml.Evenement[i].@y;
				Evenement["time"] = xml.Evenement[i].@time;
				FP.log(Evenement)
				Evenements.push(Evenement);
			}*/
			
		}
		
		override public function update():void 
		{
			time += FP.elapsed;
			FP.log(Evenements.length);
			if(Evenements.length > 0) {

				if (Evenements[0]["time"] <= time) {
					
					var groupe:GroupEnemy = new GroupEnemy();
					FP.world.add(groupe);
					groupe.createGroup(Evenements[0]["nombre"], Evenements[0]["type"],  Evenements[0]["x"] , Evenements[0]["y"]);
					
					Evenements.shift();
				}
				
			}
			
		}	
		
	}

}