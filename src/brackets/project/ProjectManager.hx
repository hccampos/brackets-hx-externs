package brackets.project;

/**
 * @author AS3Boyan
 */
@:native("brackets_externs.project.ProjectManager")
extern class ProjectManager
{
    public function new():Void {}
    
    public function openProject(path:String):Void;
}
