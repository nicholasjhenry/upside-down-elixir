# Part 1. Run-time vs Compile-time

# Demo 1

# iex >
c "./lib/demos/1_runtime_v_compiletime/part_1_demo_1.ex"
Part1Demo1.Calculator.add(1, 3)

# Demo 2

# MSG=foo mix compile --force > /dev/null
# MSG=bar iex -S mix
# iex >
Part1Demo2.Calculator.add1(1, 2)
Part1Demo2.Calculator.add2(1, 2)

# MSG=bar mix compile --force > /dev/null
# MSG=qux iex -S mix
Part1Demo2.Calculator.add1(1, 2)
Part1Demo2.Calculator.add2(1, 2)
