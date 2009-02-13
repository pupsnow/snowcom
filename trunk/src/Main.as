package  
 { 
	import com.ApplicationFacade;
	import com.LoadSwfManager;
	
	import fl.controls.Label;
	
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;
	import flash.ui.Keyboard;
	public class Main extends Sprite
	{   private var facade:ApplicationFacade;
	    private var url:URLRequest;
	    private var movieurl:URLRequest;
	    private var loader:Loader;
	    private var movieloader:Loader;
	    private var perlabel:Label;
	    public var loadManager:LoadSwfManager= LoadSwfManager.getInstance();
	    private var model:modeltext=modeltext.getInstance();
		public function Main()
		{   	
			facade = ApplicationFacade.getInstance();
			facade.startup(this);
			loadManager.mainswf = this;
			loadFirstPage();//加载首页swf
			
		}
		private function loadFirstPage():void
		{ 
		  loadManager.loadSwf("../assets/firstswf.swf");
		 //url=new URLRequest('../assets/firstswf.swf');
//		   loader=new Loader();
//		   loader.load(url);
//		   this.addChild(loader);
//		   loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, loadProgress);
//           loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadComplete);
		   this.stage.addEventListener(KeyboardEvent.KEY_DOWN,keyDownHander);
		   model.mytext="mainhhhh";
		}
	    private	function loadProgress(event:ProgressEvent):void {
				var percentLoaded:Number = event.bytesLoaded/event.bytesTotal;
				percentLoaded = Math.round(percentLoaded * 100);
				perlabel=new Label();
				perlabel.text=percentLoaded+"%";
				//trace("Loading: "+percentLoaded+"%");				
			}
		/**
		 *加載完畢。 
		 * @param event
		 * 
		 */			
		private	function loadComplete(event:Event):void {							
	
			}
		private function keyDownHander(event:KeyboardEvent):void
		{ 
			switch(event.keyCode)
			{
				case Keyboard.ENTER:
				  loadManager.loadSwf("movie.swf");
				   this.stage.removeEventListener(KeyboardEvent.KEY_DOWN,keyDownHander);
			       break;
//			       case Keyboard.RIGHT:
//			           this.stage.removeEventListener(KeyboardEvent.KEY_DOWN,keyDownHander);
//			           this.removeChild(loader);			  		           
//			       break;
			}
			 	    
		}
	}
}
