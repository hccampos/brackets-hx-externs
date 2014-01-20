package brackets.command;

/**
 * @author Hugo Campos <hcfields@gmail.com> (www.hccampos.net)
 */
@:native("brackets_externs.command.AppMenuBar")
extern class AppMenuBar {
    private function new() { }

    public var FILE_MENU(default, never):String;
    public var EDIT_MENU(default, never):String;
    public var VIEW_MENU(default, never):String;
    public var NAVIGATE_MENU(default, never):String;
    public var HELP_MENU(default, never):String;
}
