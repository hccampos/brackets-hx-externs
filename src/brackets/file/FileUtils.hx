package brackets.file;

/**
 * ...
 * @author AS3Boyan
 */
@:native("brackets_externs.file.FileUtils")
extern class FileUtils
{

	public function new() 
	{
		
	}
	
	public function getFileExtension(path:String):String;
	public function getDirectoryPath(path:String):String;
	public function convertWindowsPathToUnixPath(path:String):String;
	public function compareFilenames(filename1:String, filename2:String, extFirst:Bool):Int;
	public function getBaseName(path:String):String;
	public function writeText(file:brackets.filesystem.File, text:String, allowBlindWrite:Bool):Dynamic;
	public function readAsText(file:brackets.filesystem.File):Dynamic;
	public function getPlatformLineEndings():String;
	
}