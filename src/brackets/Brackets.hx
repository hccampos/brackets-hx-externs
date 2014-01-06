package brackets;

import brackets.Brackets.ModuleConstructor;

typedef Require = String->Dynamic;
typedef Exports = Dynamic;
typedef Module = Dynamic;
typedef ModuleConstructor = Require->Exports->Module->Void;

/**
 * Main brackets class which acts as an interface to the global "brackets" variable and to the
 * define function which is used to define brackets modules.
 *
 * @author Hugo Campos <hcfields@gmail.com> (www.hccampos.net)
 */
@:native("brackets_externs.Brackets")
class Brackets
{
    public function new() {}

    /**
     * Defines a new module using the provided module constructor.
     *
     * @param constructor
     *      Function used to create the module. Takes a require function, an exports object and a
     *      module object (which isn't used).
     */
    public static function define(constructor:ModuleConstructor):Void {
        untyped __js__("define(constructor)");
    }

    /**
     * Gets the specified brackets module.
     *
     * @param module
     *      The path of the module which is to be retrieved.
     *
     * @return The specified module.
     */
    public static function getModule(module:String):Dynamic {
        return untyped __js__("brackets.getModule(module)");
    }
}