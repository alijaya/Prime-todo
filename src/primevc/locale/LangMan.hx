package primevc.locale;

import primevc.core.dispatcher.Signal0;
import primevc.locale.LangMacro;


/**
 * ...
 * @author EzeQL
 */

@:build(primevc.locale.LangMacro.build())class LangMan
{
	public var current(default, null):ILang;
	public var change(default, null):Signal0;
	public var bindables(default, null):LangManBindables; //class generated by a macro

	public function new()
	{
		change = new Signal0();
		bindables = new LangManBindables();
		
	}
	
}
