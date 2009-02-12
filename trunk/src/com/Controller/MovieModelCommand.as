package com.Controller
{
	import com.Model.MovieProxy;
	
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;

	public class MovieModelCommand extends SimpleCommand implements ICommand
	{
		public function MovieModelCommand()
		{
			super();
		}
		
	    override public function execute(notification:INotification):void
		{
			
			facade.registerProxy(new  MovieProxy());
		}
		
	}
}