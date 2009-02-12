
package
{	
	
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
	{  
		private var model:modeltext=modeltext.getInstance();
		private var btn:Button;
		private var label:Label;
		private var  bar:TabBar;
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
			var tf:TextFormat = new TextFormat();
			tf.color = 0xFF0000;
			tf.size=30;
			StyleManager.setStyle("textFormat", tf);//所有的组件都具有同样的样式 。
            //StyleManager.setComponentStyle(Button, "textFormat",tf);//所有的button都具有相同的样式
			btn=new Button();
			btn.label=model.mytext;	
			//btn.setStyle("TexwtFormat",textf);					
			//btn.setSize(500,600);
			btn.x=100;
			btn.y=100;
		    //btn.move(100,500);
			this.addChild(btn);				
			//tree=new Tree();	
		    creatUI();	
		}
		
		private function creatUI():void
		{
			creatbackgroundSwf();
			creatButtonBar();
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
			bar=new TabBar();		
			var items:Array = [
			{label:"热         门", data:"11/19/1995"},
			{label:"国         产", data:"4/20/1993"},
			{label:"日         韩", data:"4/20/1993"},
			{label:"欧         美", data:"9/06/1997"},
			{label:"最近 观看", data:"9/06/1997"},
			{label:"收         藏", data:"9/06/1997"},
			{label:"搜         索", data:"9/06/1997"}]
			bar.dataProvider=new DataProvider(items);
			bar.autoSizeTabsToTextWidth=true;
			bar.height=50;
			bar.addEventListener(KeyboardEvent.KEY_DOWN,keyDownHander);
			this.addChild(bar);	
			bar.move(110,150);
			bar.setFocus();							
		}
	    /**
	     *加载海报。。 
	     * 
	     */		
	    private  function creatPoster():void
		 {
			
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
		 		case Keyboard.ENTER:		 		    
		 		break;
		 	}
		                                                                                                                                                                                                                                                                                                                                                                                              }
		
	}
}