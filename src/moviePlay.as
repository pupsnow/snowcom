package
{
	import com.LoadSwfManager;
	
	import fl.controls.Label;
	
	import flash.display.Sprite;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;

	public class moviePlay extends Sprite
	{   public var loadManager:LoadSwfManager= LoadSwfManager.getInstance();
		public function moviePlay()
		{
			//super();
			//completeHander();
		}
		
		
		private function completeHander():void
		{
			 var label:Label=new Label();
			 label.text="";
			 this.addChild(label);
			this.stage.addEventListener(KeyboardEvent.KEY_DOWN,keydownHander);
			
		}
		private function keydownHander(event:KeyboardEvent):void
		{
			switch (event.keyCode)
			{
				case Keyboard.ENTER:
								
				 break;
				 
				 case Keyboard.ESCAPE:
				 		loadManager.unloadSwf();
				 		loadManager.loadSwf("movie.swf");
				 		this.stage.removeEventListener(KeyboardEvent.KEY_DOWN,keydownHander);	 
				 break;
			}
		}
		
	}
}