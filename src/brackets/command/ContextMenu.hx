package brackets.command;

import js.html.MouseEvent;

@:native("brackets_externs.command.ContextMenu")
extern class ContextMenu extends Menu {
    private function new():Void { }

    public function open(mouseOrLocation:MouseEvent):Void;
    public function close():Void;
}