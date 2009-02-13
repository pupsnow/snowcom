package
{
	import fl.controls.Button;
	import fl.controls.Label;
	import fl.managers.StyleManager;
	import flash.display.Sprite;
	import flash.text.TextFormat;
	public class MovieAS extends Sprite
	{  
		private var model:modeltext=modeltext.getInstance();
		private var btn:Button;
		private var label:Label;
		private   var textf:TextFormat=new TextFormat();
		public function MovieAS()
		{  
		    trace("aaa");
			super();
			var tf:TextFormat = new TextFormat();
			tf.color = 0xFF0000;
			tf.size=16;
			StyleManager.setStyle("textFormat", tf);//所有的组件都具有同样的样式 。
//			StyleManager.setComponentStyle(Button, "textFormat",tf);//所有的button都具有相同的样式
			btn=new Button();
			btn.label=model.mytext;	
			//btn.setStyle("TexwtFormat",textf);					
			//btn.setSize(500,600);
			btn.x=100;
			btn.y=100;
		    //btn.move(100,500);
			this.addChild(btn);
		}
	private  function creatLabel():void
		{
			label=new Label();
		}
	 
	}
}