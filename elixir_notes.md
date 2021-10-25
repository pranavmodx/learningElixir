# Types
Any two types can be compared; this is particularly useful in sorting
== for value, === for value and type (just like JS)

Atom is a type (symbol)
:iamanatom

# String 
- interpolation
"text #{variable}"
- concatenation 
"text" <> variable

# List
Elixir implements list collections as linked lists. This means that accessing the list length is an operation that will run in linear time (O(n)). For this reason, it is typically faster to prepend than to append

append -> ++

A side note about the name (++/2) format used above: In Elixir (and Erlang, upon which Elixir is built), a function or operator name has two components: the name you give it (here ++) and its arity. Arity is a core part of speaking about Elixir (and Erlang) code. It is the number of arguments a given function takes (two, in this case). Arity and the given name are combined with a slash.

- subtraction - uses strict comparison
-> --

cons operator -> |
[head | tail] = ["hello", :vscode, 3.14]
// head -> ["hello"], tail -> [:vscode, 3.14]

# Tuples
Tuples are similar to lists, but are stored contiguously in memory. This makes accessing their length fast but modification expensive; the new tuple must be copied entirely to memory.

# Keyword lists
A special list of two-element tuples whose first element is an atom; they share performance with lists.
The three characteristics of keyword lists highlight their importance:

Keys are atoms.
Keys are ordered.
Keys do not have to be unique.
For these reasons, keyword lists are most commonly used to pass options to functions.

# Maps 
As of Elixir 1.2, variables are allowed as map keys
map = %{:foo => "bar", "hello" => :world}

There is a special syntax for maps containing only atom keys
%{foo: "bar", hello: "world"}