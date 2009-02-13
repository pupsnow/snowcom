package com.Controller
{
	import org.puremvc.as3.patterns.command.MacroCommand;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.interfaces.ICommand;

	public class MovieCommand extends MacroCommand
	{
		
		override protected function initializeMacroCommand():void
		{
			addSubCommand(MovieModelCommand);
			addSubCommand(MovieViewCommand);
		}
		
	}
}