package ;

import brackets.Brackets;
import brackets.command.CommandManager;
import brackets.command.Menu;
import brackets.command.Menus;
import brackets.extensions.Extension;
import js.Browser;

/**
 * Hello World extension which replicates the one from the Brackets wiki: 
 * 
 * https://github.com/adobe/brackets/wiki/Simple-%22Hello-World%22-extension
 *
 * @author Hugo Campos <hcfields@gmail.com> (www.hccampos.net)
 */
class HelloWorldExtension extends Extension {
    private static inline var MYCOMMAND_ID = "helloworld.sayhello";

    /**
     * Constructor.
     */
    public function new() {
        super();
    }

    /**
     * Initializes the extension.
     */
    override public function initialize():Void {
        super.initialize();

        // Get the modules we will need.
        var commandManager:CommandManager = Brackets.getModule("command/CommandManager");
        var menus:Menus = Brackets.getModule("command/Menus");

        // Register our command with brackets so it will know about it when we click the
        // menu item which will be created below.
        commandManager.register("Hello World", MYCOMMAND_ID, this.handleHelloWorld);

        // Create a new menu item in the file menu and associate it with the command we created above.
        var menu:Menu = menus.getMenu(menus.AppMenuBar.FILE_MENU);
        menu.addMenuItem(MYCOMMAND_ID);
    }

    /**
     * Method which will be called when the user clicks the menu item that the extension
     * creates in the file menu.
     */
    public function handleHelloWorld():Void {
        Browser.window.alert("Hello, world!");
    }
}