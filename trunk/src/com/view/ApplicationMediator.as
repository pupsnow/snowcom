package com.view
{
	import org.puremvc.as3.patterns.mediator.Mediator;
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;

	public class ApplicationMediator extends Mediator implements IMediator
	{  public static const NAME:String = "ApplicationMediator";
		public function ApplicationMediator(viewComponent:Object=null)
		{
			
			super(NAME, viewComponent);
		}

	}
}