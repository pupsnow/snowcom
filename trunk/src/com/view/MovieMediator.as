package com.view
{
	import org.puremvc.as3.patterns.mediator.Mediator;
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;

	public class MovieMediator extends Mediator implements IMediator
	{
		public function MovieMediator(viewComponent:Object=null)
		{
			super(mediatorName, viewComponent);
		}
	     override public function listNotificationInterests():Array
		{
			return null;
		}		
	    override public function handleNotification(notification:INotification):void
		{
			
			
		}		
	}
}