package com.Controller
{
	import org.puremvc.as3.patterns.command.SimpleCommand;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.interfaces.ICommand;

	public class StartUpCommand extends SimpleCommand implements ICommand
	{
		public function StartUpCommand()
		{
			super();
		}
		
		public function execute(notification:INotification):void
		{
		}
		
	}
}