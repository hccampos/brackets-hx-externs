package brackets.filesystem;

/**
 * @author Hugo Campos <hcfields@gmail.com> (www.hccampos.net)
 * @author AS3Boyan
 */
@:native("brackets_externs.filesystem.File")
extern class File {
    public function new():Void { }
    
    public function read(options:Dynamic, onCallback:Dynamic):Void;
}
