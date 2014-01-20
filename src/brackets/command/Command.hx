package brackets.command;

/**
 * @author Hugo Campos <hcfields@gmail.com> (www.hccampos.net)
 */
@:native("brackets_externs.command.Command")
extern class Command {
    private function new() { };
    public function getID():String;
    public function execute():Dynamic;
    public function getEnabled():Bool;
    public function setEnabled(enabled:Bool):Void;
    public function getChecked():Bool;
    public function setChecked(checked:Bool):Void;
    public function setName(name:String):Void;
    public function getName():String;
}
