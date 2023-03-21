package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;


	public class Level1Day1 extends MovieClip {

		public function Level1Day1() {
		
		}
		
		public function gotoPlay(e:MouseEvent):void
		{
			MovieClip(root).gotoAndStop(4,"lesson1");
		}
		//decalire sound class
		public var cat:CatSound = new CatSound();
		public var bed:BedSound = new BedSound();
		public var cake:CakeSound = new CakeSound();
		public var child:ChildSound = new ChildSound();
		public var dog:DogSound = new DogSound();
		public var socks:SocksSound = new SocksSound();
		public var sun:SunSound = new SunSound();
		public function playSounds(event:MouseEvent):void
		{
			switch(event.currentTarget.name)
			{
				case "cat": cat.play();
				break;
				case "cake": cake.play();
				break;
				case "socks": socks.play();
				break;
				case "dog": dog.play();
				break;
				case "bed": bed.play();
				break;
				case "child": child.play();
				break;
				case "sun": sun.play();
				break;
				default: trace("sound not found");
			}
		}
		//correct answer
		public function correctAnswer(event:MouseEvent):void
		{
			switch(MovieClip(root).currentFrame)
			{
				case 4:
					switch(event.currentTarget.name)
					{
						case "catBtn":MovieClip(root).gotoAndStop(5,"lesson1");
						break;
					}break;
				case 5:
					switch(event.currentTarget.name)
					{
						case "bedBtn":MovieClip(root).gotoAndStop(6,"lesson1");
						break;
					}break;
				case 6:
					switch(event.currentTarget.name)
					{
						case "childBtn":MovieClip(root).gotoAndStop(7,"lesson1");
						break;
					}break;
				case 7:
					switch(event.currentTarget.name)
					{
						case "dogBtn":MovieClip(root).gotoAndStop(8,"lesson1");
						break;
					}break;
				case 8:
					switch(event.currentTarget.name)
					{
						case "sunBtn":MovieClip(root).gotoAndStop(1,"lesson1");
						break;
					}break;
					
			}
		}

	}

}