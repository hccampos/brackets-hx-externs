package brackets.command;

import js.html.MouseEvent;

/**
 * @author Hugo Campos <hcfields@gmail.com> (www.hccampos.net)
 */
@:native("brackets_externs.command.ContextMenu")
extern class ContextMenu extends Menu {
    private function new():Void { }

    public function open(mouseOrLocation:MouseEvent):Void;
    public function close():Void;
}
