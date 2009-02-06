package
{	
	import com.yahoo.astra.fl.controls.TabBar;
	import com.yahoo.astra.fl.controls.Tree;
	
	import fl.controls.Button;
	import fl.controls.Label;
	import fl.data.DataProvider;
	import fl.managers.StyleManager;
	
	import flash.display.Sprite;
	import flash.events.KeyboardEvent;
	import flash.text.TextFormat;
	import flash.ui.Keyboard;	
	public class Movie extends  Sprite
	{  
		private var model:modeltext=modeltext.getInstance();
		private var btn:Button;
		private var label:Label;
		private var  bar:TabBar;
		private var tree:Tree;
		private   var textf:TextFormat=new TextFormat();
		public function Movie()
		{  
		    //trace("aaa");
			super();
			var tf:TextFormat = new TextFormat();
			tf.color = 0xFF0000;
			tf.size=18;
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
			bar=new TabBar();		
			var items:Array = [
			{label:"热门", data:"11/19/1995"},
			{label:"国产", data:"4/20/1993"},
			{label:"日韩", data:"4/20/1993"},
			{label:"欧美", data:"9/06/1997"}]
			bar.dataProvider=new DataProvider(items);
			bar.addEventListener(KeyboardEvent.KEY_DOWN,keyDownHander);
			this.addChild(bar);	
			bar.setFocus();	
			
			tree=new Tree();		
		}		
		private function creatButtonBar():void
		{
								
		}
	    private  function creatLabel():void
		 {
			label=new Label();
		 }
		 
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