# Part 2: High level syntax / Data as Code

# Demo 1

# iex >
quote do 1 + 2 end # => {:+, [context: Elixir, import: Kernel], [1, 2]}

# Infix operator, operator is between it's operands
_ = Kernel.+(1, 2)
# {function, metadata, [arg]}

quote do (1 + (2 * 3)) - 4 end

# Exit to Slides for formatting
