package  
 { 
	import com.ApplicationFacade;	
	import fl.controls.Label;	
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;

	public class Main extends Sprite
	{   private var facade:ApplicationFacade;
	    private var url:URLRequest;
	    private var loader:Loader;
	    private var perlabel:Label;
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
	}
}
