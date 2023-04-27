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
		
		public function Scoring() {
			if(so.data.myPoints == null) {
				so.data.myPoints = 0;
				so.flush();
			}
			else {
				so.data.myPoints = so.data.myPoints;
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
			}
			else if(wrongCounter == 1) 
			{
				so.data.myPoints = currPoints + 4;
				pointStatus = "+4";
			}
			else if(wrongCounter == 2) 
			{
				so.data.myPoints = currPoints + 3;
				pointStatus = "+3";
			}
			else if(wrongCounter == 3) 
			{
				so.data.myPoints = currPoints + 2;
				pointStatus = "+2";
			}
			else 
			{
				so.data.myPoints = currPoints + 1;
				pointStatus = "+1";
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
	}

}