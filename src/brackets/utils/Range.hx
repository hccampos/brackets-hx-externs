package brackets.utils;

@:native("brackets_externs.utils.Range")
class Range {
    public var startLine:Int;
    public var endLine:Int;

    public function new(startLine:Int, endLine:Int) {
        this.startLine = startLine;
        this.endLine = endLine;
    }
}