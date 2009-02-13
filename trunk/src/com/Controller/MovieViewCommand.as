package com.Controller
{
	import com.view.MovieMediator;
	
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;

	public class MovieViewCommand extends SimpleCommand implements ICommand
	{
		public function MovieViewCommand()
		{
			super();
		}
		
	    override public function execute(notification:INotification):void
		{
			var movie:Movie=notification.getBody() as Movie;
			facade.registerMediator(new MovieMediator(movie));
		}
		
	}
}