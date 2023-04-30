package  {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	public class ScoreNavigation extends MovieClip{

		public function ScoreNavigation() {
			// constructor code
		}
		
		public function scoreList(e:MouseEvent):void
		{
			MovieClip(root).gotoAndStop(1, "score_board");
		}
		
		public function scoreBack(e:MouseEvent):void
		{
			MovieClip(root).gotoAndStop(3, "mainScreen");
		}
		public function levelListScore(e:MouseEvent):void
		{
			switch(e.currentTarget.name){
				case "level1_score":
					MovieClip(root).gotoAndStop(2, "score_board");
				break;
				case "level2_score":
					MovieClip(root).gotoAndStop(3, "score_board");
				break;
				case "level3_score":
					MovieClip(root).gotoAndStop(4, "score_board");
				break;
				case "level4_score":
					MovieClip(root).gotoAndStop(5, "score_board");
				break;
				case "level5_score":
					MovieClip(root).gotoAndStop(6, "score_board");
				break;
				case "level6_score":
					MovieClip(root).gotoAndStop(7, "score_board");
				break;
				case "back_list":
					MovieClip(root).gotoAndStop(1, "score_board");
				break;
			}
		}

	}
	
}
