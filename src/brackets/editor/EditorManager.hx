package brackets.editor;

import brackets.document.Document;
import brackets.utils.Range;
import js.JQuery;

@:native("brackets_externs.editor.EditorManager")
extern class EditorManager {
    private function new() { }

    public function setEditorHolder(holder:JQuery):Void;
    public function getCurrentFullEditor():Editor;
    public function createInlineEditorForDocument(doc:Document, range:Range, inlineContent:Dynamic):Dynamic;
    public function focusEditor():Void;
    public function getFocusedEditor():Editor;
    public function getActiveEditor():Editor;
    public function getCurrentlyViewedPath():String;
    public function getFocusedInlineWidget():InlineWidget;
    public function resizeEditor():Void;
    public function registerInlineEditProvider(provider:Dynamic, priority:Int):Void;
    public function registerInlineDocsProvider(provider:Dynamic, priority:Int):Void;
    public function registerJumpToDefProvider(provider:Dynamic):Void;
    public function getInlineEditors(hostEditor:Editor):Array<Editor>;
    public function closeInlineWidget(hostEditor:Editor, inlineWidget:InlineWidget):Dynamic;
    public function showCustomViewer(provider:Dynamic, fullPath:String):Void;
    public function registerCustomViewer(langId:String, provider:Dynamic):Void;
    public function getCustomViewerForPath(fullPath:String):Dynamic;
    public function notifyPathDeleted(fullPath:String):Void;
    public function closeCustomViewer():Void;
    public function showingCustomViewerForPath(fullPath:String):Bool;
}