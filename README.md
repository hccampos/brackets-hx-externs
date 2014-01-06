Haxe externs for Brackets
------------------------------

Haxe externs for the Brackets editor (http://brackets.io). These externs can be used to create extensions for brackets.


Usage
------------------------------

To create a new extension all you have to do is create a subclass of the Extension class, override the initialize() method and then, in the Main() method, just instantiate the extension.


Example
------------------------------

The Hello-World extension from the Brackets wiki (https://github.com/adobe/brackets/wiki/Simple-%22Hello-World%22-extension) would look like this in Haxe:

```haxe
class HelloWorldExtension extends Extension {
    private static inline var MYCOMMAND_ID = "helloworld.sayhello";

    public function new() { super(); }

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
     * Called when the user clicks the menu item that the extension creates.
     */
    public function handleHelloWorld():Void {
        Browser.window.alert("Hello, world!");
    }
}
```

And the Main would look like this:

```haxe
class Main {
    public static function main():Void {
        var extension:Extension = new HelloWorldExtension();
    }
}
```


Notes
------------------------------
This is still very incomplete but should be enough to write some simple extensions. Please let me know if there is a certain API that you would like me to include. And, of course, pull requests are more than welcome.