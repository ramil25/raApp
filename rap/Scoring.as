package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.net.SharedObject;

	public class Scoring extends MovieClip {

		var points:SharedObject = SharedObject.getLocal("points");
		
		public function Scoring() {
			points.data.myPoints = 0;
		}
		
		public function addPoints():void {
			var currPoints:int = points.data.myPoints;
			
			points.data.myPoints = currPoints + 5;
			points.flush();
			
			trace(points.data.myPoints);
		}
		
		public function decPoints():void {
			var currPoints:int = points.data.myPoints;
			
			if(currPoints > 1)
			{
				points.data.myPoints = currPoints - 2;
			}
			else {
				points.data.myPoints = 0;
			}
			
			points.flush();
			
			trace(points.data.myPoints);
		}
	}

}