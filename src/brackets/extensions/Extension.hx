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
    private var _require:Require;
    private var _module:Module;

    /**
     * Constructor.
     */
    public function new():Void {
        Brackets.define(function (require:Require, exports:Exports, module:Module):Void {
            _require = require;
            _module = _module;
            initialize();
        });
    }

    /**
     * Initializes the extension. Required modules should be loaded here.
     */
    public function initialize():Void {}

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
    
    /**
     * The module of the extension.
     */
    public var module(get, never):Module;
    private inline function get_module():Module { return _module; }
}
