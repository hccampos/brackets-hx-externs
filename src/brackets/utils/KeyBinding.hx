package brackets.utils;

@:native("brackets_externs.utils.KeyBinding")
class KeyBinding {
    public var key:String;
    public var platform:String;

    public function new(key:String, platform:String):Void {
        this.key = key;
        this.platform = platform;
    }
}