package com
{
	import org.puremvc.as3.interfaces.IFacade;
	import org.puremvc.as3.patterns.facade.Facade;

	public class ApplicationFacade extends Facade implements IFacade
	{  public static const STARTUP:String = "startup";
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