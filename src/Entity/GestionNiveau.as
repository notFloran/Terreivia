package Entity
{

	import Entity.Enemy.*;
	
	import World.NiveauFini;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.utils.*;
	
	import flash.utils.ByteArray;

	/**
	 * ...
	 * @author Floran
	 */
	public class GestionNiveau extends Entity
	{
		public var time:Number = 0;
		public var time2:Number = 0;
		private var Evenements:Array = new Array();
		
		[Embed(source="../../niveau.xml", mimeType="application/octet-stream")]
		private var xmlNiveau:Class;
		
		public function GestionNiveau () 
		{
	
			var byteArray:ByteArray = new xmlNiveau(  );
			var xml:XML = new XML(byteArray.readUTFBytes(byteArray.length));
			
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
				
				if (Evenements.length == 0 && tabGroupEnemy.length == 0)
					FP.world = new NiveauFini;
			}
		}	
		
	}

}