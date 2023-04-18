package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import flash.media.Sound;
	import flash.media.SoundMixer;
	import flash.utils.Timer;
	import flash.events.TimerEvent;

	public class Level4Day2 extends MovieClip {

		public function Level4Day2() {
		
		}
		
		public function startButton(e:MouseEvent):void
		{
			MovieClip(root).gotoAndStop(10,"lesson4");
		}
		
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		
		public var fly:Sound = new FlySound();
		public var cry:Sound = new CrySound();
		public var sunny:Sound = new SunnySound();
		public var pony:Sound = new PonySound();
	
		public var robot1Sound: Sound = new RB1L4D2Sound();
		public var robot2Sound: Sound = new RB2L4D2Sound();
		
		public function nextButtons(e:MouseEvent):void
		{
			if(e.currentTarget.name == "btn_next1") {
				MovieClip(root).gotoAndStop(11,"lesson4");
			}
			else if(e.currentTarget.name == "btn_next2") {
				MovieClip(root).gotoAndStop(12,"lesson4");
			}
			else if(e.currentTarget.name == "btn_play") {
				SoundMixer.stopAll();
				MovieClip(root).gotoAndStop(13,"lesson4");
			}
			else if(e.currentTarget.name == "btn_play_1") {
				SoundMixer.stopAll();
				MovieClip(root).gotoAndStop(14,"lesson4");
			}
		}
		
		public function playSounds(e:MouseEvent):void
		{
			if(e.currentTarget.name == "flyZoomBtn") {
				e.currentTarget.play();
			}
			else if(e.currentTarget.name == "cryZoomBtn") {
				e.currentTarget.play();
			}
			else if(e.currentTarget.name == "sunnyZoomBtn") {
				e.currentTarget.play();
			}
			else if(e.currentTarget.name == "ponyZoomBtn") {
				e.currentTarget.play();
			}
		}
		
		public function correctAnswer(e:MouseEvent):void 
		{
			cSound.play();
			timer.stop();
			cd = 180;
			
			switch(MovieClip(root).currentFrame) 
			{
				case 14:
					MovieClip(root).gotoAndStop(15,"lesson4");
				break;
				case 15:
					MovieClip(root).gotoAndStop(16,"lesson4");
				break;
				case 16:
					MovieClip(root).gotoAndStop(17,"lesson4");
				break;
				case 17:
					MovieClip(root).gotoAndStop(18,"lesson4");
				break;
				case 18:
					MovieClip(root).gotoAndStop(33,"lesson4");
				break;
				default:
					trace("No frame was found");
			}
		}
		
		public function wrongAnswer(e:MouseEvent):void 
		{
			wSound.play();
		}
		
		//timer
		private var cd: int = 180; // 3 minutes = 180 seconds
		public var timer:Timer = new Timer(1000, cd);
		public var endTimeSound:Sound = new TimesUpSound();
		
		public function onTick(event:TimerEvent): void {
			cd--;
			var minutes:int = Math.floor(cd / 60);
			var seconds:int = cd % 60;
			var time:String = minutes + ":" + (seconds < 10 ? "0" : "") + seconds;
			MovieClip(this.root).time_txt.text = time;
		}
		
		public function onComplete(event: TimerEvent): void {
			MovieClip(this.root).time_txt.text = String("Time's Up!!!");
			endTimeSound.play();
			timer.reset();
			cd = 180;
			
			setTimeout(timerNextFrame, 1000);
		}
		
		public function timerNextFrame():void {
			if(MovieClip(root).currentFrame == 14)
			{
				MovieClip(root).gotoAndStop(15, "lesson4");
			}
			else if(MovieClip(root).currentFrame == 15)
			{
				MovieClip(root).gotoAndStop(16, "lesson4");
			}
			else if(MovieClip(root).currentFrame == 16)
			{
				MovieClip(root).gotoAndStop(17, "lesson4");
			}
			else if(MovieClip(root).currentFrame == 17)
			{
				MovieClip(root).gotoAndStop(18, "lesson4");
			}
			else if(MovieClip(root).currentFrame == 18)
			{
				MovieClip(root).gotoAndStop(33, "lesson4");
			}
		}
	}

}