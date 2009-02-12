package com.Model
{
	import org.puremvc.as3.interfaces.IProxy;
	import org.puremvc.as3.patterns.proxy.Proxy;

	public class MovieProxy extends Proxy implements IProxy
	{
		public function MovieProxy(proxyName:String=null, data:Object=null)
		{
			super(proxyName, data);
		}
			
	}
}