package Entity
{

	import Entity.Enemy.*;
	
	import World.NiveauFini;
	
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
		public var time2:Number = 0;
		private var Evenements:Array = new Array();
		
		public function GestionNiveau () 
		{
	
			var xml:XML = <root>
				<Evenement time="5" nombre="4" type="White" x="20" y="0" />
				<Evenement time="5" nombre="3" type="Black" x="200" y="0" />
				<Evenement time="15" nombre="2" type="Black" x="60" y="0" />
			</root>;
			
			for(var i:String in xml..Evenement) {
				var Evenement:Object = new Object();
				Evenement["nombre"] = xml.Evenement[i].@nombre;
				Evenement["type"] = xml.Evenement[i].@type;
				Evenement["x"] = xml.Evenement[i].@x;
				Evenement["y"] = xml.Evenement[i].@y;
				Evenement["time"] = xml.Evenement[i].@time;

				Evenements.push(Evenement);
			}
			
		}
		
		override public function update():void 
		{
			time += FP.elapsed;
			time2 += FP.elapsed;
			
			if(Evenements.length > 0) {

				if (Evenements[0]["time"] <= time) {
					
					var groupe:GroupEnemy = new GroupEnemy();
					FP.world.add(groupe);
					groupe.createGroup(Evenements[0]["nombre"], Evenements[0]["type"],  Evenements[0]["x"] , Evenements[0]["y"]);
					
					Evenements.shift();
				}
				
			}
			
			
			// On vérifie toutes les 2 secondes si les niveau est fini
			if(time2 > 2) {
				
				time2 = 0;
				var tabGroupEnemy:Array = [];
				FP.world.getClass(GroupEnemy,tabGroupEnemy);
				FP.log(Evenements.length + "  " + tabGroupEnemy.length);
				
				if(Evenements.length == 0 && tabGroupEnemy.length == 0) FP.world = new NiveauFini;
			}
		}	
		
	}

}