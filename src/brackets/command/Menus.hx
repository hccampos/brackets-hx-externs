package brackets.command;

@:native("brackets_externs.command.Menus")
extern class Menus {
    private function new();

    public function getMenu(id:String):Menu;
    public function getAllMenus():Dynamic;
    public function getMenuItem(id:String):MenuItem;
    public function getContextMenu(id:String):ContextMenu;
    public function addMenu(name:String, id:String, position:String, relativeID:String):Menu;
    public function removeMenu(id:String):Void;
    public function registerContextMenu(id:String):ContextMenu;
    public function closeAll():Void;

    public var BEFORE(default, never):String;
    public var AFTER(default, never):String;
    public var LAST(default, never):String;
    public var FIRST(default, never):String;
    public var FIRST_IN_SECTION(default, never):String;
    public var LAST_IN_SECTION(default, never):String;
    public var DIVIDER(default, never):String;

    public var AppMenuBar(default, never):AppMenuBar;
    public var ContextMenuIds(default, never):ContextMenuIds;
    public var MenuSection(default, never):MenuSection;
}