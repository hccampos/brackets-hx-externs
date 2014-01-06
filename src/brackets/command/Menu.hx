package brackets.command;
import brackets.utils.KeyBinding;

@:native("brackets_externs.command.Menu")
extern class Menu {
    private function new() { }

    public function removeMenuItem(command:Dynamic):Void;
    public function removeMenuDivider(menuItemID:String):Void;
    public function addMenuItem(command:Dynamic, ?keyBindings:Array<KeyBinding>, ?position:String, ?relativeID:String):MenuItem;
    public function addMenuDivider(?position:String, ?relativeID:String):MenuItem;
    public function createMenuItemsFromJSON(jsonStr:String, ?position:String, ?relativeID:String):Array<MenuItem>;

    public var id(default, default):String;
}