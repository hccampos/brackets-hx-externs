package brackets.utils;

@:native("brackets_externs.utils.CursorPos")
class CursorPos {
    public var line:Float;
    public var ch:Float;

    public function new(line:Int, ch:Int) {
        this.line = line;
        this.ch = ch;
    }
}