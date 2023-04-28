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

	public class Scoring extends MovieClip {

		var so:SharedObject = SharedObject.getLocal("SharedObject");
		var wrongCounter:int = 0;
		var pointStatus:String = "";
		
		var score:int = 0;
		
		public function Scoring() {
			if(so.data.myPoints == null) {
				so.data.myPoints = 0;
				so.flush();
			}
			else {
				so.data.myPoints = so.data.myPoints;
				so.flush();
			}
			
			if(so.data.scoreL1D1 == null && so.data.scoreL1D5 == null && so.data.scoreL2D1 == null && so.data.scoreL2D3 == null
				&& so.data.scoreL2D5 == null && so.data.scoreL3D1 == null && so.data.scoreL3D2 == null && so.data.scoreL3D3 == null 
				&& so.data.scoreL3D4 == null && so.data.scoreL3D5 == null && so.data.scoreL4D1 == null && so.data.scoreL4D2 == null
				&& so.data.scoreL4D3 == null && so.data.scoreL4D5 == null && so.data.scoreL5D1 == null && so.data.scoreL5D2 == null 
			    && so.data.scoreL5D3 == null && so.data.scoreL5D4 == null && so.data.scoreL5D5 == null && so.data.scoreL6D1 == null
				&& so.data.scoreL6D2 == null && so.data.scoreL6D3 == null && so.data.scoreL6D4 == null && so.data.scoreL6D5 == null) {
				
				so.data.scoreL1D1 = 0;
				so.data.scoreL1D5 = 0;
				so.data.scoreL2D1 = 0;
				so.data.scoreL2D3 = 0;
				so.data.scoreL2D5 = 0;
				so.data.scoreL3D1 = 0; 
				so.data.scoreL3D2 = 0; 
				so.data.scoreL3D3 = 0;
				so.data.scoreL3D4 = 0;
				so.data.scoreL3D5 = 0;
				so.data.scoreL4D1 = 0;
				so.data.scoreL4D2 = 0;
				so.data.scoreL4D3 = 0;
				so.data.scoreL4D5 = 0;
				so.data.scoreL5D1 = 0;
				so.data.scoreL5D2 = 0; 
				so.data.scoreL5D3 = 0; 
				so.data.scoreL5D4 = 0;
				so.data.scoreL5D5 = 0;
				so.data.scoreL6D1 = 0;
				so.data.scoreL6D2 = 0;
				so.data.scoreL6D3 = 0;
				so.data.scoreL6D4 = 0;
				so.data.scoreL6D5 = 0;
				so.flush();
			}
			else {
				so.data.scoreL1D1 = so.data.scoreL1D1;
				so.data.scoreL1D5 = so.data.scoreL1D5;
				so.data.scoreL2D1 = so.data.scoreL2D1;
				so.data.scoreL2D3 = so.data.scoreL2D3;
				so.data.scoreL2D5 = so.data.scoreL2D5;
				so.data.scoreL3D1 = so.data.scoreL3D1; 
				so.data.scoreL3D2 = so.data.scoreL3D2; 
				so.data.scoreL3D3 = so.data.scoreL3D3;
				so.data.scoreL3D4 = so.data.scoreL3D4;
				so.data.scoreL3D5 = so.data.scoreL3D5;
				so.data.scoreL4D1 = so.data.scoreL4D1;
				so.data.scoreL4D2 = so.data.scoreL4D2;
				so.data.scoreL4D3 = so.data.scoreL4D3;
				so.data.scoreL4D5 = so.data.scoreL4D5;
				so.data.scoreL5D1 = so.data.scoreL5D1;
				so.data.scoreL5D2 = so.data.scoreL5D2; 
				so.data.scoreL5D3 = so.data.scoreL5D3; 
				so.data.scoreL5D4 = so.data.scoreL5D4;
				so.data.scoreL5D5 = so.data.scoreL5D5;
				so.data.scoreL6D1 = so.data.scoreL6D1;
				so.data.scoreL6D2 = so.data.scoreL6D2;
				so.data.scoreL6D3 = so.data.scoreL6D3;
				so.data.scoreL6D4 = so.data.scoreL6D4;
				so.data.scoreL6D5 = so.data.scoreL6D5;
				so.flush();
			}
			
		}
		
		var ptsContainer:Class = getDefinitionByName("TextPoints") as Class; 
		var mc:MovieClip = new ptsContainer();
		
		public function addPoints():void {
			var currPoints:int = so.data.myPoints;
			
			if(wrongCounter == 0)
			{
				so.data.myPoints = currPoints + 5;
				pointStatus = "+5";
				score += 5;
			}
			else if(wrongCounter == 1) 
			{
				so.data.myPoints = currPoints + 4;
				pointStatus = "+4";
				score += 4;
			}
			else if(wrongCounter == 2) 
			{
				so.data.myPoints = currPoints + 3;
				pointStatus = "+3";
				score += 3;
			}
			else if(wrongCounter == 3) 
			{
				so.data.myPoints = currPoints + 2;
				pointStatus = "+2";
				score += 2;
			}
			else 
			{
				so.data.myPoints = currPoints + 1;
				pointStatus = "+1";
				score += 1;
			}
			
			wrongCounter = 0;
			so.flush();
			
			displayPoints(so.data.myPoints, pointStatus);
		}
		
		public function decPoints():void {
			var currPoints:int = so.data.myPoints;
			wrongCounter++;
			
			if(currPoints > 1)
			{
				so.data.myPoints = currPoints - 2;
			}
			else {
				so.data.myPoints = 0;
			}
			
			so.flush();
			
			pointStatus = "-2";
			displayPoints(so.data.myPoints, pointStatus);
		}
		
		function displayPoints(totalPoints:int, pointStatus:String):void {
			stage.addChild(mc);
			mc.x = 1140;
			mc.y = 18;

			mc.gotoAndPlay(1);
			
			mc.point.text = "Points: " + totalPoints;
			mc.point_status.text = pointStatus;
			
			mc.addEventListener(Event.ENTER_FRAME, checkFrame);
		}

		function checkFrame(event:Event):void {
			if (mc.currentFrame == mc.totalFrames) {
				mc.stop();
				mc.removeEventListener(Event.ENTER_FRAME, checkFrame);
				stage.removeChild(mc);
			}
		}
		
		public function addScore(levelDay:String):void {
			try {
				var selectedDay = "score" + levelDay;
				so.data.selectedDay = score;
				so.flush();
				score = 0;
				trace("Added: " + selectedDay + ". Score: " + so.data.selectedDay);
			}
			catch(e:Error) {
				trace("Error: " + e);
			}
		}
	}

}