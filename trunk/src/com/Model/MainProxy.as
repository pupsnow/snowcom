package com.Model
{
	import org.puremvc.as3.interfaces.IProxy;
	import org.puremvc.as3.patterns.proxy.Proxy;

	public class MainProxy extends Proxy implements IProxy
	{
		public function MainProxy(proxyName:String=null, data:Object=null)
		{
			super(proxyName, data);
		}
		
	}
}