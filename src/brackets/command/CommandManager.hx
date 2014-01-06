package brackets.command;

@:native("brackets_externs.command.CommandManager")
extern class CommandManager {
    private function new() { }

    public function register(name:String, ?id:String, ?commandFn:Dynamic):Command;
    public function registerInternal(id:String, ?commandFn:Dynamic):Command;
    public function execute(id:String):Dynamic;
    public function get(id:String):Command;
    public function getAll():Array<Command>;
}