package com
{
	import com.Controller.MovieCommand;
	import com.Controller.StartUpCommand;
	
	import org.puremvc.as3.interfaces.IFacade;
	import org.puremvc.as3.patterns.facade.Facade;

	public class ApplicationFacade extends Facade implements IFacade
	{   public static const STARTUP:String = "startup";
	    public static const MOVIE:String="Movie";
	    public static const CHANG_SWF:String="ChangSwf";//切换swf,公用nitification.
		public function ApplicationFacade()
		{
			super();
		}
	    /**
		 * Singleton ApplicationFacade Factory Method
		 */
		public static function getInstance():ApplicationFacade
		{
			if ( instance == null ) instance = new ApplicationFacade();
			return instance as ApplicationFacade;
		}
		/**  注册command，建立command与Notification之间的映射！
		 *ApplicationFacade被实例化加载的时候，
		 * 会先自动调用initializeController( ) 这个函数，
		 * 所以，我们应当在ApplicationFacade在被初始化的时候，
		 * 就对Command进行注册，说就是注册，
		 * 其实也只是将一个Command与一个消息绑定在一起而已。
		 * 当发送该消息时，Facade就会自动的找到那个Command并实例化执行。 
		 * 
		 */											
		override protected function initializeController():void{
			super.initializeController();
			//register some Commands
			registerCommand(STARTUP,StartUpCommand);//对Command进行注册。有人发送一个STARTUP的消息时，程序就自动生成一个StartupCommand来处理。
			registerCommand(MOVIE,MovieCommand);
		}
		
		/**
		 *启动PurMVC。 在运用程序中调用此方法。并传递应用程序本身的引用；
		 * @param app
		 * 
		 */		
		public function startup(app:Object):void{		
			sendNotification(STARTUP,app);	
		}	
		
	}
}