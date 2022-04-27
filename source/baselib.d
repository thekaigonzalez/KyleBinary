module baselib;

import kyle;
import std.stdio;

void print(kyle_arguments A, kyle_state S) {
    string text = kyle_vararg!(string).kyle_convert_argument(0, A);
    writeln(text);
}