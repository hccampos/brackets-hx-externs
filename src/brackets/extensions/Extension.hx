package brackets.extensions;

import brackets.Brackets;
import brackets.editor.EditorManager;

/**
 * Default implementation of the IExtension interface. Brackets extensions should extend this class
 * and override the initialize method to grab references to required brackets modules and initialize
 * themselves.
 *
 * @author Hugo Campos <hcfields@gmail.com> (www.hccampos.net)
 */
@:native("brackets_externs.extensions.Extension")
class Extension implements IExtension {
    private var _require:String->Dynamic;
	public var module:Dynamic;

    /**
     * Constructor.
     */
    public function new() {
        Brackets.define(function (require:Require, exports:Exports, p_module:Module):Void {
            _require = require;
			module = p_module;
            initialize();
        });
    }

    /**
     * Initializes the extension. Required modules should be loaded here.
     */
    public function initialize():Void {
    }

    /**
     * Requires a module from the extension's source tree.
     *
     * @param moduleName
     *      The name of the module which is to be required.
     *
     * @return The module which was required.
     */
    public function require(moduleName:String):Dynamic {
        return _require(moduleName);
    }
}