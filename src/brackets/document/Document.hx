package brackets.document;

import brackets.filesystem.File;
import brackets.utils.CursorPos;

@:native("brackets_externs.document.Document")
extern class Document {
    public function new() { }

    public function addRef():Void;
    public function releaseRef():Void;
    public function getText(useOriginalLineEndings:Bool):String;
    public function normalizeText(text:String):String;
    public function setText(text:String):Void;
    public function refreshText(text:String, newTimestamp:Date):Void;
    public function replaceRange(text:String, start:CursorPos, end:CursorPos, origin:String):Void;
    public function getRange(start:CursorPos, end:CursorPos):String;
    public function getLine(lineNum:Int):String;
    public function batchOperation(doOperation:Dynamic):Void;
    public function notifySaved():Void;
    public function toString():String;
    public function getLanguage():Dynamic;
    public function isUntitled():Bool;

    public var file(default, default):File;
    public var language(default, default):Dynamic;
    public var isDirty(default, default):Bool;
    public var diskTimestamp(default, default):Date;
}