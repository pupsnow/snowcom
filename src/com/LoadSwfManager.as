﻿package  com
{
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLRequest;
	
	public class LoadSwfManager
	{
		private static var instance:LoadSwfManager;
		private var _mainswf:Main;
		private var urll:Loader;
		public static function getInstance():LoadSwfManager
		{
			if(instance==null)
				{
				instance = new LoadSwfManager();
				
				}
			return instance;
			
		}
		public function LoadSwfManager()
		{
			urll= new Loader();
			//this.mainswf = value;
		}
		
		public function set mainswf(value:Main):void
		{
			_mainswf = value;
		}
		
		public function get mainswf():Main
		{
			return  _mainswf;
		}
		public function loadSwf(url_str:String):void
		{
			var url:URLRequest = new URLRequest(url_str);
			
				urll.x = 0;
				urll.y = 0;
				urll.load(url);
			mainswf.addChild(urll);
//			urll.contentLoaderInfo.addEventListener(Event.COMPLETE,initHandler);
		}
		
		private function initHandler(e:Event):void
		{
			
//			var mov:LoadSWF = e.target.content;
//			trace(e.target);
//			mov.data = DataSource.getInstance();
//			facade.registerMediator(new LoadSwfMediate(mov));
		}
		public function unloadSwf():void
		{
			urll.unload();
		}

	}
}