package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.net.SharedObject;
	import flash.net.dns.PTRRecord;
	import flash.utils.getDefinitionByName;
	import flash.utils.setTimeout;
	import flash.text.TextField;

	public class Store extends MovieClip {

		var so:SharedObject = SharedObject.getLocal("SharedObject");
		
		public function Store() {
			if(so.data.cursorStatus == null && so.data.usedCursor == null) {
				so.data.cursorStatus = [-1, -1, -1, -1, -1, -1];
				so.data.usedCursor = 0;
				so.flush();
			}
			else {
				so.data.cursorStatus = so.data.cursorStatus;
				so.data.usedCursor = so.data.usedCursor;
				so.flush();
			}
		}
		
		public function getCursorStatus():Array {
			return so.data.cursorStatus;
		}
		
		public function cursorStatus():void {
			var status:Array = so.data.cursorStatus;
			var used:int = so.data.usedCursor;
			
			var waterMelon:MovieClip = MovieClip(root).getChildByName("btnWM") as MovieClip;
			var pixel:MovieClip = MovieClip(root).getChildByName("btnPX") as MovieClip;
			var amongUs:MovieClip = MovieClip(root).getChildByName("btnAU") as MovieClip;
			var greenLeaf:MovieClip = MovieClip(root).getChildByName("btnGL") as MovieClip;
			var peach:MovieClip = MovieClip(root).getChildByName("btnMP") as MovieClip;
			var sword:MovieClip = MovieClip(root).getChildByName("btnMS") as MovieClip;
			
			if(status[0] == 0) {
				waterMelon.wm_text.text = "Equip";
			}
			else {
				waterMelon.wm_text.text = "Buy";
			}
			
			if(status[1] == 0) {
				pixel.pixel_text.text = "Equip";
			}
			else {
				pixel.pixel_text.text = "Buy";
			}
			
			if(status[2] == 0) {
				amongUs.au_text.text = "Equip";
			}
			else {
				amongUs.au_text.text = "Buy";
			}
			
			if(status[3] == 0) {
				greenLeaf.gl_text.text = "Equip";
			}
			else {
				greenLeaf.gl_text.text = "Buy";
			}
			
			if(status[4] == 0) {
				peach.mp_text.text = "Equip";
			}
			else {
				peach.mp_text.text = "Buy";
			}
			
			if(status[5] == 0) {
				sword.ms_text.text = "Equip";
			}
			else {
				sword.ms_text.text = "Buy";
			}
			
			if(used == 1) {
				waterMelon.wm_text.text = "Used";
			}
			else if(used == 2) {
				pixel.pixel_text.text = "Used"; 
			}
			else if(used == 3) {
				amongUs.au_text.text = "Used";
			}
			else if(used == 4) {
				greenLeaf.gl_text.text = "Used";
			}
			else if(used == 5) {
				peach.mp_text.text = "Used";
			}
			else if(used == 6) {
				sword.ms_text.text = "Used";
			}
		}
		
		public function displayPoints():void {
			var points = so.data.myPoints;
			MovieClip(root).points_text.text = points;
		}
		
		public function buttonEvents(e:MouseEvent):void {
			var status:Array = so.data.cursorStatus;
			var points = so.data.myPoints;
			
			var textField:TextField = e.target as TextField;
			var buttonText:String = textField.text;
			
			if(buttonText == "Buy") {
				switch(e.target.name) {
					case "wm_text":
					  if(points >= 20) {
						  status[0] = 0;
						  so.data.myPoints -= 20;
						  so.flush();
						  displayPoints();
						  cursorStatus();
					  }
					break;
					case "pixel_text":
					  if(points >= 40) {
						  status[1] = 0;
						  so.data.myPoints -= 40;
						  so.flush();
						  displayPoints();
						  cursorStatus();
					  }
					break;
					case "au_text":
					  if(points >= 80) {
						  status[2] = 0;
						  so.data.myPoints -= 80;
						  so.flush();
						  displayPoints();
						  cursorStatus();
					  }
					break;
					case "gl_text":
					  if(points >= 100) {
						  status[3] = 0;
						  so.data.myPoints -= 100;
						  so.flush();
						  displayPoints();
						  cursorStatus();
					  }
					break;
					case "mp_text":
					  if(points >= 120) {
						  status[4] = 0;
						  so.data.myPoints -= 120;
						  so.flush();
						  displayPoints();
						  cursorStatus();
					  }
					break;
					case "ms_text":
					  if(points >= 150) {
						  status[5] = 0;
						  so.data.myPoints -= 150;
						  so.flush();
						  displayPoints();
						  cursorStatus();
					  }
					break;
					default:
						trace("No button was found");
				}
			}
			else if(buttonText == "Equip") {
				var selectedCursor:int = 0;
				
				switch(e.target.name) {
					case "wm_text":
					  selectedCursor = 1;
					break;
					case "pixel_text":
					  selectedCursor = 2;
					break;
					case "au_text":
					  selectedCursor = 3;
					break;
					case "gl_text":
					  selectedCursor = 4;
					break;
					case "mp_text":
					  selectedCursor = 5; 
					break;
					case "ms_text":
					  selectedCursor = 6;
					break;
					default:
						trace("No button was found");
				}
				
				so.data.usedCursor = selectedCursor;
				so.flush();
				cursorStatus();
			}
		}
		
		public function goToMenu(e:MouseEvent):void {
			MovieClip(root).gotoAndStop(3, "mainScreen");
		}
		
		public function clearSO(e:MouseEvent):void {
			so.clear();
		}
	}

}