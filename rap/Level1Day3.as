package  {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	public class Level1Day3 extends MovieClip{

		public function Level1Day3() {
			// constructor code
		}
		public function startL1D3(e:MouseEvent):void
		{
			switch(e.currentTarget.name)
			{
				case "playL1D3Btn":MovieClip(root).gotoAndStop(18,"lesson1");
				break;
				case "playL1D3Btn2":MovieClip(root).gotoAndStop(21,"lesson1");
			}
			
		}
		//Phrases
		public var phrase1Sound:Sound = new Phrase1();
		public var phrase2Sound:Sound = new Phrase2();
		public var phrase3Sound:Sound = new Phrase3();
		public var phrase4Sound:Sound = new Phrase4();
		public var phrase5Sound:Sound = new Phrase5();
		public var phrase6Sound:Sound = new Phrase6();
		public var phrase7Sound:Sound = new Phrase7();
		public var phrase8Sound:Sound = new Phrase8();
		public var phrase9Sound:Sound = new Phrase9();
		public var phrase10Sound:Sound = new Phrase10();
		public var phraseSounds:Array = new Array(phrase1Sound,phrase2Sound,phrase3Sound,phrase4Sound,phrase6Sound,phrase7Sound,phrase8Sound,phrase9Sound);
		public var phraseBtn:Array = new Array("btn_1","btn_2","btn_3","btn_4","btn_6","btn_7","btn_8","btn_9");

		public function playPhrases(e:MouseEvent):void
		{
			for(var i:int = 0; i<phraseBtn.length; i++){
				if(e.currentTarget.name == phraseBtn[i])
				{
					phraseSounds[i].play();
				}
			}
			if(e.currentTarget.name == "btn_10"){
				phrase10Sound.play();
				MovieClip(root).gotoAndStop(20,"lesson1");
			}else if(e.currentTarget.name =="btn_5"){
				phrase5Sound.play();
				MovieClip(root).gotoAndStop(19,"lesson1");
			}
		}
		//Sentences
		public var sentence1Sound:Sound = new Sentence1();
		public var sentence2Sound:Sound = new Sentence2();
		public var sentence3Sound:Sound = new Sentence3();
		public var sentence4Sound:Sound = new Sentence4();
		public var sentence5Sound:Sound = new Sentence5();
		public var sentence6Sound:Sound = new Sentence6();
		public var sentence7Sound:Sound = new Sentence7();
		public var sentence8Sound:Sound = new Sentence8();
		public var sentence9Sound:Sound = new Sentence9();
		public var sentence10Sound:Sound = new Sentence10();
		public var sentenceSounds:Array = new Array(sentence1Sound,sentence2Sound,sentence3Sound,sentence4Sound,sentence6Sound,sentence7Sound,sentence8Sound,sentence9Sound);
		public function playSentences(e:MouseEvent):void
		{
			for(var i:int = 0; i<sentenceSounds.length; i++){
				if(e.currentTarget.name == phraseBtn[i])
				{
					sentenceSounds[i].play();
				}
			}
			if(e.currentTarget.name == "btn_10"){
				sentence10Sound.play();
				MovieClip(root).gotoAndStop(1,"lesson1");
			}else if(e.currentTarget.name =="btn_5"){
				sentence5Sound.play();
				MovieClip(root).gotoAndStop(22,"lesson1");
			}
		}
	}
	
}
