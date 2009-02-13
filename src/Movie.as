package
{	
	
	import com.LoadSwfManager;
	
	import fl.controls.Button;
	import fl.controls.Label;
	import fl.data.DataProvider;
	import fl.managers.StyleManager;
	
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.KeyboardEvent;
	import flash.net.URLRequest;
	import flash.text.TextFormat;
	import flash.ui.Keyboard;
	
	import selfdesizenUI.controls.TabBar;	
	public class Movie extends  Sprite
	{   public var loadManager:LoadSwfManager= LoadSwfManager.getInstance();
		private var model:modeltext=modeltext.getInstance();
		private var btn:Button;
		private var label:Label;
		private var  bar:TabBar;
		private  var photoFlow:PhotoFlow;
		//private var tree:Tree;
		private   var textf:TextFormat=new TextFormat();
		/**
		 *初始化 
		 * 
		 */		
		public function Movie()
		{  
		    //trace("aaa");
			super();			
			creatStyle();
		    creatUI();	
		}	
		/**
		 *创建Style
		 * 
		 */		
		private function creatStyle():void{
			var tf:TextFormat = new TextFormat();
			tf.color = 0xFF0000;
			tf.size=30;
			StyleManager.setStyle("textFormat", tf);//所有的组件都具有同样的样式 。
            //StyleManager.setComponentStyle(Button, "textFormat",tf);//所有的button都具有相同的样式
		}
		/**
		 *创建UI 
		 * 
		 */			
		private function creatUI():void
		{
			creatbackgroundSwf();
			creatButtonBar();
			creatPoster();
		}	
		/**
		 *加载背景图片、、 
		 * 
		 */		
		private function creatbackgroundSwf():void
		{
		    var url:URLRequest=new  URLRequest("../assets/movie/movieback.swf");
			var loader:Loader=new Loader();
			loader.load(url);
			this.addChild(loader);
		}	
		/**
		 *左边导航条条。 
		 * 
		 */		
		private function creatButtonBar():void
		{					
//			bar=new TabBar();		
//			var items:Array = [
//			{label:"热         门", data:"11/19/1995"},
//			{label:"国         产", data:"4/20/1993"},
//			{label:"日         韩", data:"4/20/1993"},
//			{label:"欧         美", data:"9/06/1997"},
//			{label:"最近 观看", data:"9/06/1997"},
//			{label:"收         藏", data:"9/06/1997"},
//			{label:"搜         索", data:"9/06/1997"}]
//			bar.dataProvider=new DataProvider(items);
//			bar.autoSizeTabsToTextWidth=true;
//			bar.height=50;
//			bar.addEventListener(KeyboardEvent.KEY_DOWN,keyDownHander);
//			this.addChild(bar);	
//			bar.move(110,150);
//			bar.setFocus();		
           btn=new Button();
           btn.label="接受焦点按钮";
           btn.addEventListener(KeyboardEvent.KEY_DOWN,keyDownHander);
           this.addChild(btn);
           btn.width=100;
           btn.height=200;
           btn.setFocus();
          					
		}
	    /**
	     *加载海报。。 
	     * 
	     */		
	    private  function creatPoster():void
		 {
			photoFlow=new PhotoFlow();
			photoFlow.width=300;
			photoFlow.height=300;
			photoFlow.photoHeight=150;
			photoFlow.photoWidth=150;
			photoFlow.resizeImage="none";
			this.addChild(photoFlow);
			photoFlow.x=450;
			photoFlow.y=250;
			photoFlow.rotation=0;
			photoFlow.scaleY=1;
			photoFlow.scaleX=1;
			photoFlow.view=50;
			photoFlow.autoFlip=false;
			photoFlow.showReflection=true;
			photoFlow.photoHeight=50;
			photoFlow.photoAngle=50;
		    photoFlow.reflectionDepth=70;
		    photoFlow.reflectionExtend=50;
			photoFlow.selectedReflectionAlpha=70;
			photoFlow.selectedReflectionDepth=100;
			photoFlow.xmlURL="photos.xml";			
		 }	
		/**
		 *键盘事件。。。。 
		 * @param event
		 * 
		 */		 	 
		private function keyDownHander(event:KeyboardEvent):void
		 {
		 	switch (event.keyCode)
		 	{
		 		case Keyboard.ESCAPE:
		 		    photoFlow.xmlURL="";
		 		    //var data:Array=new Array();
		 		    //bar.dataProvider=new DataProvider(data);;
		 		    this.removeChild(photoFlow);	
		 		    this.removeChild(btn);	 		    
		 		 	LoadSwfManager.getInstance().unloadSwf();
					LoadSwfManager.getInstance().loadSwf("../assets/firstswf.swf");	   
					btn.removeEventListener(KeyboardEvent.KEY_DOWN,keyDownHander); 
		 		break;
		 		case Keyboard.ENTER:
		 		photoFlow.xmlURL="";
		 		    //var datae:Array=new Array();
		 		   // bar.dataProvider=new DataProvider(datae);;
		 		    this.removeChild(photoFlow);	
		 		    this.removeChild(btn);
		 		    LoadSwfManager.getInstance().unloadSwf();
		 		    LoadSwfManager.getInstance().loadSwf("moviePlay.swf");
		 		    btn.removeEventListener(KeyboardEvent.KEY_DOWN,keyDownHander); 	
		 		break;
		 	}
		                                                                                                                                                                                                                                                                                                                                                                                              }
	
	}
}