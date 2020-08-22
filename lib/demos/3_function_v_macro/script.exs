# Part 3: Function / Macro

# Demo 1: ast => ast

# iex >
clear
Part3Demo1.Tracer.trace(1 + 2) # => error
require Part3Demo1.Tracer; Part3Demo1.Tracer.trace(1 + 2)

# Demo 2: defmacro/? invoked at compile-time

# iex >

clear
r  Part3Demo2.Calculator
Part3Demo2.Calculator.add(1, 2)

# Demo 3: caller context

# iex>
clear
r Part3Demo3.Calculator
Part3Demo3.Calculator.add(1, 2)


# Demo 4: expansion

require Part3Demo3.Tracer

# Parsing phase
quoted = quote do Part3Demo3.Tracer.trace(1 + 2) end

# Expansion Phase
Macro.expand(quoted, __ENV__)

# Demo 4: unquote/1

quote do x + 2 end
x = 1
quote do x + 2 end
quote do unquote(x) + 2 end
