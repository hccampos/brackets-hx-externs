package brackets.utils;

/**
 * @author AS3Boyan
 */
@:native("brackets_externs.utils.ExtensionUtils")
extern class ExtensionUtils
{
    public function new():Void {}

    public function getModulePath(module:Dynamic, name:String):Dynamic;
}
