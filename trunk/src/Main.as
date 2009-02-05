package  
 { 
	import com.ApplicationFacade;
	
	import fl.containers.UILoader;
	import fl.controls.Label;	
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;
	public class Main extends Sprite
	{   private var facade:ApplicationFacade;
	    private var url:URLRequest;
	    private var movieurl:URLRequest;
	    private var loader:Loader;
	    private var movieloader:Loader;
	    private var perlabel:Label;
	    private  var model:modeltext=modeltext.getInstance();
		public function Main()
		{   				
			facade = ApplicationFacade.getInstance();
			facade.startup(this);
			loadFirstPage();//加载首页swf
		}
		private function loadFirstPage():void
		{  url=new URLRequest('../assets/firstswf.swf');
		   loader=new Loader();
		   loader.load(url);
		   this.addChild(loader);
		   loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, loadProgress);
           loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadComplete);
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
		private	function loadComplete(event:Event):void {							
	
			}
		private function keyDownHander(event:KeyboardEvent):void
		{  this.stage.removeEventListener(KeyboardEvent.KEY_DOWN,keyDownHander);
		  // movieurl=new URLRequest('movie.swf');
		   loader.unload();
		  // movieloader=new Loader();
		  // movieloader.load(movieurl);
		   this.removeChild(loader);
		  // movieloader.x=0;
		   //movieloader.y=0;   		   
		 //  this.addChild(movieloader);
	       var uiloader:Loader=new Loader();
	       uiloader.load(new URLRequest("movie.swf"));
	       //uiloader.setSize(500,200);
	       uiloader.x=100;
	       uiloader.y=100;
	       this.addChild(uiloader);
		    
		}
	}
}
