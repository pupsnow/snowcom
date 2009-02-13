package com.Controller
{
	import com.Model.MainProxy;
	
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;

	public class ModelPrepCommand extends SimpleCommand implements ICommand
	{
		public function ModelPrepCommand()
		{
			super();
		}
		
	   override	public function execute(notification:INotification):void
		{
			
			facade.registerProxy(new MainProxy());
		}
		
	}
}