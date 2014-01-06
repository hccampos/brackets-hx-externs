package brackets.utils;

@:native("brackets_externs.utils.ScrollPos")
class ScrollPos {
    public var x:Float;
    public var y:Float;

    public function new(x:Float, y:Float) {
        this.x = x;
        this.y = y;
    }
}