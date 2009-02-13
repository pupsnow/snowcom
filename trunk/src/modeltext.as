package
{
	import flash.events.EventDispatcher;
	
	public class modeltext extends EventDispatcher
	{		
		private static var _instance:modeltext;
		public static function getInstance():modeltext{
			if(_instance == null){
				_instance = new modeltext();
			}
			return _instance;
		}			
		public  var mytext:String="";

	}
}