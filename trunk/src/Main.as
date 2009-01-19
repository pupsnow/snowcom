package  
 {
	import com.ApplicationFacade;
	
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.net.URLRequest;

	public class Main extends Sprite
	{   private var facade:ApplicationFacade;
		public function Main()
		{   
			facade = ApplicationFacade.getInstance();
			facade.startup(this);
			loadFirstPage();//加载首页swf
		}
		private function loadFirstPage():void
		{  var url:URLRequest=new URLRequest('assets/firstswf.swf');
		   var loader:Loader=new Loader();
		   loader.load(url);
		   
			
		}
	}
}
