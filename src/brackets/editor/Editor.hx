package brackets.editor;

import brackets.document.Document;
import brackets.utils.CursorPos;
import brackets.utils.Range;
import brackets.utils.ScrollPos;
import brackets.utils.Selection;
import js.html.HtmlElement;
import js.JQuery;

@:native("brackets_externs.editor.Editor")
extern class Editor {
    private function new() { }

    public function destroy():Void;
    public function selectAllNoScroll():Void;
    public function getCursorPos(expandTabs:Bool):CursorPos;
    public function getColOffset(pos:CursorPos):Int;
    public function setCursorPos(line:Int, ch:Int, center:Bool, expandTabs:Bool):Void;
    public function setSize(width:Float, height:Float):Void;
    public function centerOnCursor(centerOptions:Int):Void;
    public function indexFromPos(coords:CursorPos):Int;
    public function posWithinRange(pos:CursorPos, start:CursorPos, end:CursorPos, endInclusive:Bool):Void;
    public function hasSelection():Bool;
    public function getSelection():Selection;
    public function getSelectedText():String;
    public function setSelection(start:CursorPos, end:CursorPos, center:Bool, centerOptions:Int):Void;
    public function selectWordAt(pos:CursorPos):Void;
    public function lineCount():Int;
    public function isLineVisible(line:Int):Bool;
    public function getFirstVisibleLine():Int;
    public function getLastVisibleLine():Int;
    public function totalHeight():Float;
    public function getScrollerElement():HtmlElement;
    public function getRootElement():HtmlElement;
    public function getScrollPos():ScrollPos;
    public function setScrollPos(x:Float, y:Float):Void;
    public function getTextHeight():Float;
    public function addInlineWidget(pos:CursorPos, inlineWidget:InlineWidget, scrollLineIntoView:Bool):Dynamic;
    public function removeAllInlineWidgets():Dynamic;
    public function removeInlineWidget(inlineWidget:InlineWidget):Dynamic;
    public function removeAllInlineWidgetsForLine(lineNum:Int):Dynamic;
    public function getInlineWidgets():Array<Dynamic>;
    public function getVirtualScrollAreaTop():Float;
    public function setInlineWidgetHeight(inlineWidget:InlineWidget, height:Float, ensureVisible:Bool):Void;
    public function focus():Void;
    public function hasFocus():Bool;
    public function refresh(handleResize:Bool):Void;
    public function refreshAll(handleResize:Bool):Void;
    public function undo():Void;
    public function redo():Void;
    public function setVisible(show:Bool, refresh:Bool):Void;
    public function isFullyVisible():Bool;
    public function getModeForSelection():Dynamic;
    public function getLanguageForSelection():String;
    public function getModeForDocument():Dynamic;

    public var document(default, default):Document;
    public var _codeMirror(default, default):Dynamic;

    public static function setUseTabChar(value:Bool):Void;
    public static function getUseTabChar():Bool;
    public static function setTabSize(value:Int):Void;
    public static function getTabSize():Int;
    public static function setSpaceUnits(value:Int):Void;
    public static function getSpaceUnits():Int;
    public static function setCloseBrackets(value:Bool):Void;
    public static function getCloseBrackets():Bool;
    public static function setShowLineNumbers(value:Bool):Void;
    public static function getShowLineNumbers():Bool;
    public static function setShowActiveLine(value:Bool):Void;
    public static function getShowActiveLine():Bool;
    public static function setWordWrap(value:Bool):Void;
    public static function getWordWrap():Bool;
}