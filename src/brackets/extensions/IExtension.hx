package brackets.extensions;

/**
 * Interface which must be implemented by all brackets extensions.
 *
 * @author Hugo Campos <hcfields@gmail.com> (www.hccampos.net)
 */
@:native("brackets_externs.extensions.IExtension")
interface IExtension {
    /**
     * Initializes the extension. Required modules should be loaded here.
     */
    public function initialize():Void;

    /**
     * Requires a module from the extension's source tree.
     *
     * @param moduleName
     *      The name of the module which is to be required.
     *
     * @return The module which was required.
     */
    public function require(moduleName:String):Dynamic;
}