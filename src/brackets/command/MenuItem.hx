package brackets.command;

@:native("brackets_externs.command.MenuItem")
extern class MenuItem {
    private function new() { }

    public function createSubMenu(text:String, id:String, position:String, relativeID:String):MenuItem;
    public function getCommand():Command;
    public function getParentMenuItem():MenuItem;
    public function getParentMenu():Menu;


    public var id(default, default):String;
    public var isDivider(default, default):Bool;
    public var isNative(default, default):Bool;
}