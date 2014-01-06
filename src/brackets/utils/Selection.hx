package brackets.utils;

@:native("brackets_externs.utils.Selection")
class Selection
{
    public var start:CursorPos;
    public var end:CursorPos;

    public function new(start:CursorPos, end:CursorPos) {
        this.start = start;
        this.end = end;
    }
}