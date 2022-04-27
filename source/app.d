import std.stdio;
import std.file;
import baselib;
import kyle;

void main(string[] args)
{
	// load file
	string text = cast(string) read(args[1]);
	auto mainEnv = kyle_new();

	kyle_allow_module(mainEnv);

	kyle_add_delegate(mainEnv, &print, "print");

	kyle_set_code(mainEnv, text);

	kyle_execute(mainEnv);
}
