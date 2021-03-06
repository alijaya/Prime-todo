package prime.examples.todoapp;
 import flash.Lib;
 import prime.examples.todoapp.TodoGUIMediator;

/**
 * ...
 * @author EzeQL
 */

class TodoAppView extends prime.mvc.MVCActor<TodoFacade> implements prime.mvc.IMVCCoreActor
{
	public var todoListMediator:TodoListMediator;
	public var todoGUIMediator:TodoGUIMediator;

	public function new(facade) 
	{
		super(facade);
		var gui = new TodoGUI(Lib.current.stage, "todoGUI");
		
		todoGUIMediator = new TodoGUIMediator(facade, true, gui);
		todoListMediator = new TodoListMediator(facade, true, gui.listView); 
	}
}