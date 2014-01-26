package brackets;

/**
 * ...
 * @author AS3Boyan
 */
@:native("brackets_externs.DomainManager")
extern class DomainManager
{
	public function new() 
	{
		
	}
	
	public function hasDomain(name:String):Bool;
	public function registerDomain(name:String, params:Dynamic):Void;
	public function registerCommand(name:String, commandName:String, commandHandler:Dynamic, synchronous:Bool, description:String, parameters:Array<Dynamic>, returnValues:Array<Dynamic>):Void;
}