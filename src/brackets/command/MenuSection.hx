package brackets.command;

@:native("brackets_externs.command.MenuSection")
extern class MenuSection {
    private function new() { }

    public var FILE_OPEN_CLOSE_COMMANDS(default, never):String;
    public var FILE_SAVE_COMMANDS(default, never):String;
    public var FILE_LIVE(default, never):String;
    public var FILE_EXTENSION_MANAGER(default, never):String;

    public var EDIT_UNDO_REDO_COMMANDS(default, never):String;
    public var EDIT_TEXT_COMMANDS(default, never):String;
    public var EDIT_SELECTION_COMMANDS(default, never):String;
    public var EDIT_FIND_COMMANDS(default, never):String;
    public var EDIT_REPLACE_COMMANDS(default, never):String;
    public var EDIT_MODIFY_SELECTION(default, never):String;
    public var EDIT_COMMENT_SELECTION(default, never):String;
    public var EDIT_CODE_HINTS_COMMANDS(default, never):String;
    public var EDIT_TOGGLE_OPTIONS(default, never):String;

    public var VIEW_HIDESHOW_COMMANDS(default, never):String;
    public var VIEW_FONTSIZE_COMMANDS(default, never):String;
    public var VIEW_TOGGLE_OPTIONS(default, never):String;

    public var NAVIGATE_GOTO_COMMANDS(default, never):String;
    public var NAVIGATE_DOCUMENTS_COMMANDS(default, never):String;
    public var NAVIGATE_OS_COMMANDS(default, never):String;
    public var NAVIGATE_QUICK_EDIT_COMMANDS(default, never):String;
    public var NAVIGATE_QUICK_DOCS_COMMANDS(default, never):String;
}