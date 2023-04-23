package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import flash.media.Sound;
	import flash.text.TextField;
	import flash.media.SoundMixer;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import Scoring;

	public class Level5Day5 extends MovieClip {
		
		public var scoring:Scoring = new Scoring();

		public function Level5Day5() {
			addChild(scoring);
		}
		
		public function playButtons(e:MouseEvent):void
		{
			switch(e.currentTarget.name) {
				case "btnStart_l5_d5":
					MovieClip(root).gotoAndStop(25,"lesson5");
				break;
				case "btnPlay_l5_d5":
					SoundMixer.stopAll();
					MovieClip(root).gotoAndStop(26,"lesson5");
				break;
				case "btnPlay1_l5_d5":
					SoundMixer.stopAll();
					MovieClip(root).gotoAndStop(27,"lesson5");
				break;
				default: 
					trace("Button not found in this frame.");
			}
		}
		
		public var robot1Sound: Sound = new RB1L4D2Sound();
		public var robot2Sound: Sound = new RobotL5D5Sound();	
		
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		
		var columnWord:Array = [false, false, false, false, false, false, false, false, false, false];
		var columnPic:Array = [false, false, false, false, false, false, false, false, false, false];
		
		var correctCounter:int = 0;

		public function startDrawing(event:MouseEvent):void {
			var drawingLayer:MovieClip = MovieClip(parent).getChildByName("DrawingLayer") as MovieClip;
			
			switch(event.currentTarget.name) 
			{
				case "word_crown":
					columnWord[0] = true;
				break;
				case "word_drum":
					columnWord[1] = true;
				break;
				case "word_bridge":
					columnWord[2] = true;
				break;
				case "word_broom":
					columnWord[3] = true;
				break;
				case "word_dress":
					columnWord[4] = true;
				break;
				case "word_snail":
					columnWord[5] = true;
				break;
				case "word_squirrel":
					columnWord[6] = true;
				break;
				case "word_store":
					columnWord[7] = true;
				break;
				case "word_stone":
					columnWord[8] = true;
				break;
				case "word_scale":
					columnWord[9] = true;
				break;
				default:
					trace("No word was found");
			}
			
			drawingLayer.graphics.lineStyle(20, 0x000000);
			drawingLayer.graphics.moveTo(event.stageX, event.stageY);
			stage.addEventListener(MouseEvent.MOUSE_MOVE, drawLine);
		}

		public function drawLine(event:MouseEvent):void {
			var drawingLayer:MovieClip = MovieClip(parent).getChildByName("DrawingLayer") as MovieClip;
			drawingLayer.graphics.lineTo(event.stageX, event.stageY);
		}

		public function stopDrawing(event:MouseEvent):void {
			var drawingLayer:MovieClip = MovieClip(parent).getChildByName("DrawingLayer") as MovieClip;
			
			switch(event.currentTarget.name) 
			{
				case "pic_crown":
					columnPic[0] = true;
				break;
				case "pic_drum":
					columnPic[1] = true;
				break;
				case "pic_bridge":
					columnPic[2] = true;
				break;
				case "pic_broom":
					columnPic[3] = true;
				break;
				case "pic_dress":
					columnPic[4] = true;
				break;
				case "pic_snail":
					columnPic[5] = true;
				break;
				case "pic_squirrel":
					columnPic[6] = true;
				break;
				case "pic_store":
					columnPic[7] = true;
				break;
				case "pic_stone":
					columnPic[8] = true;
				break;
				case "pic_scale":
					columnPic[9] = true;
				break;
				default:
					trace("No pic was found");
			}
			
			checkDrawing();
			
			drawingLayer.graphics.clear();
			stage.removeEventListener(MouseEvent.MOUSE_MOVE, drawLine);
		}
		
		public function textEvent(e:Event):void {
			switch(e.currentTarget.name)
			{
				case "it_crown":
					var input:TextField = MovieClip(parent).getChildByName("it_crown") as TextField;
					input.maxChars = 2;
				
					if(input.text.length == 2)
					{
						if(input.text == "cr")
						{
							correctCounter++;
							cSound.play();
							input.mouseEnabled = false;
							input.selectable = false;
							MovieClip(root).word_crown.visible = true;
						}
						else 
						{
							wSound.play();
						}
					}
				break;
				case "it_drum":
					var input1:TextField = MovieClip(parent).getChildByName("it_drum") as TextField;
					input1.maxChars = 2;
				
					if(input1.text.length == 2)
					{
						if(input1.text == "dr")
						{
							correctCounter++;
							cSound.play();
							input1.mouseEnabled = false;
							input1.selectable = false;
							MovieClip(root).word_drum.visible = true;
						}
						else 
						{
							wSound.play();
						}
					}
				break;
				case "it_bridge":
					var input2:TextField = MovieClip(parent).getChildByName("it_bridge") as TextField;
					input2.maxChars = 2;
				
					if(input2.text.length == 2)
					{
						if(input2.text == "br")
						{
							correctCounter++;
							cSound.play();
							input2.mouseEnabled = false;
							input2.selectable = false;
							MovieClip(root).word_bridge.visible = true;
						}
						else 
						{
							wSound.play();
						}
					}
				break;
				case "it_broom":
					var input3:TextField = MovieClip(parent).getChildByName("it_broom") as TextField;
					input3.maxChars = 2;
				
					if(input3.text.length == 2)
					{
						if(input3.text == "br")
						{
							correctCounter++;
							cSound.play();
							input3.mouseEnabled = false;
							input3.selectable = false;
							MovieClip(root).word_broom.visible = true;
						}
						else 
						{
							wSound.play();
						}
					}
				break;
				case "it_dress":
					var input4:TextField = MovieClip(parent).getChildByName("it_dress") as TextField;
					input4.maxChars = 2;
				
					if(input4.text.length == 2)
					{
						if(input4.text == "dr")
						{
							correctCounter++;
							cSound.play();
							input4.mouseEnabled = false;
							input4.selectable = false;
							MovieClip(root).word_dress.visible = true;
						}
						else 
						{
							wSound.play();
						}
					}
				break;
				case "it_snail":
					var input5:TextField = MovieClip(parent).getChildByName("it_snail") as TextField;
					input5.maxChars = 2;
				
					if(input5.text.length == 2)
					{
						if(input5.text == "sn")
						{
							correctCounter++;
							cSound.play();
							input5.mouseEnabled = false;
							input5.selectable = false;
							MovieClip(root).word_snail.visible = true;
						}
						else 
						{
							wSound.play();
						}
					}
				break;
				case "it_squirrel":
					var input6:TextField = MovieClip(parent).getChildByName("it_squirrel") as TextField;
					input6.maxChars = 2;
				
					if(input6.text.length == 2)
					{
						if(input6.text == "sq")
						{
							correctCounter++;
							cSound.play();
							input6.mouseEnabled = false;
							input6.selectable = false;
							MovieClip(root).word_squirrel.visible = true;
						}
						else 
						{
							wSound.play();
						}
					}
				break;
				case "it_store":
					var input7:TextField = MovieClip(parent).getChildByName("it_store") as TextField;
					input7.maxChars = 2;
				
					if(input7.text.length == 2)
					{
						if(input7.text == "st")
						{
							correctCounter++;
							cSound.play();
							input7.mouseEnabled = false;
							input7.selectable = false;
							MovieClip(root).word_store.visible = true;
						}
						else 
						{
							wSound.play();
						}
					}
				break;
				case "it_stone":
					var input8:TextField = MovieClip(parent).getChildByName("it_stone") as TextField;
					input8.maxChars = 2;
				
					if(input8.text.length == 2)
					{
						if(input8.text == "st")
						{
							correctCounter++;
							cSound.play();
							input8.mouseEnabled = false;
							input8.selectable = false;
							MovieClip(root).word_stone.visible = true;
						}
						else 
						{
							wSound.play();
						}
					}
				break;
				case "it_scale":
					var input9:TextField = MovieClip(parent).getChildByName("it_scale") as TextField;
					input9.maxChars = 2;
				
					if(input9.text.length == 2)
					{
						if(input9.text == "sc")
						{
							correctCounter++;
							cSound.play();
							input9.mouseEnabled = false;
							input9.selectable = false;
							MovieClip(root).word_scale.visible = true;
						}
						else 
						{
							wSound.play();
						}
					}
				break;
				default:
					trace("No text input was found");
			}
		}
		
		function checkDrawing():void {
			if(columnWord[0] == true && columnPic[0] == true)
			{
				correctCounter++;
				scoring.addPoints();
				cSound.play();
				MovieClip(root).line_crown.visible = true;
				MovieClip(root).word_crown.visible = false;
			}
			else if(columnWord[1] == true && columnPic[1] == true)
			{
				correctCounter++;
				scoring.addPoints();
				cSound.play();
				MovieClip(root).line_drum.visible = true;
				MovieClip(root).word_drum.visible = false;
			}
			else if(columnWord[2] == true && columnPic[2] == true)
			{
				correctCounter++;
				scoring.addPoints();
				cSound.play();
				MovieClip(root).line_bridge.visible = true;
				MovieClip(root).word_bridge.visible = false;
			}
			else if(columnWord[3] == true && columnPic[3] == true)
			{
				correctCounter++;
				scoring.addPoints();
				cSound.play();
				MovieClip(root).line_broom.visible = true;
				MovieClip(root).word_broom.visible = false;
			}
			else if(columnWord[4] == true && columnPic[4] == true)
			{
				correctCounter++;
				scoring.addPoints();
				cSound.play();
				MovieClip(root).line_dress.visible = true;
				MovieClip(root).word_dress.visible = false;
			}
			else if(columnWord[5] == true && columnPic[5] == true)
			{
				correctCounter++;
				scoring.addPoints();
				cSound.play();
				MovieClip(root).line_snail.visible = true;
				MovieClip(root).word_snail.visible = false;
			}
			else if(columnWord[6] == true && columnPic[6] == true)
			{
				correctCounter++;
				scoring.addPoints();
				cSound.play();
				MovieClip(root).line_squirrel.visible = true;
				MovieClip(root).word_squirrel.visible = false;
			}
			else if(columnWord[7] == true && columnPic[7] == true)
			{
				correctCounter++;
				scoring.addPoints();
				cSound.play();
				MovieClip(root).line_store.visible = true;
				MovieClip(root).word_store.visible = false;
			}
			else if(columnWord[8] == true && columnPic[8] == true)
			{
				correctCounter++;
				scoring.addPoints();
				cSound.play();
				MovieClip(root).line_stone.visible = true;
				MovieClip(root).word_stone.visible = false;
			}
			else if(columnWord[9] == true && columnPic[9] == true)
			{
				correctCounter++;
				scoring.addPoints();
				cSound.play();
				MovieClip(root).line_scale.visible = true;
				MovieClip(root).word_scale.visible = false;
			}
			else 
			{
				scoring.decPoints();
				wSound.play();
			}
			
			isComplete();
		}
		
		function isComplete():void {
			// reset array
			for(var i:int = 0; i < columnWord.length; i++)
			{
				columnWord[i] = false;
				columnPic[i] = false;
			}
			
			if(MovieClip(root).currentFrame == 27 && correctCounter == 10)
			{
				correctCounter = 0;
				timer.stop();
				cd = 180;
				MovieClip(root).gotoAndStop(28,"lesson5");
			}
			else if(MovieClip(root).currentFrame == 28 && correctCounter == 10)
			{
				correctCounter = 0;
				timer.stop();
				cd = 180;
				MovieClip(root).gotoAndStop(30,"lesson5");
			}
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
			
			scoring.decPoints();
			setTimeout(timerNextFrame, 1000);
		}
		
		public function timerNextFrame():void {
			if(MovieClip(root).currentFrame == 27)
			{
				MovieClip(root).gotoAndStop(28, "lesson5");
			}
			else if(MovieClip(root).currentFrame == 28)
			{
				MovieClip(root).gotoAndStop(30, "lesson5");
			}
		}

	}

}