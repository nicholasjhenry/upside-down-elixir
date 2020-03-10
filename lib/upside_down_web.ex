# NOTE: Review PageController first

defmodule UpsideDownWeb do
  def controller do
    quote do
      use Phoenix.Controller, namespace: UpsideDownWeb

      import Plug.Conn
      alias UpsideDownWeb.Router.Helpers, as: Routes
    end
  end

  def view do
    # ...
  end

  def router do
    # ...
  end

  def channel do
    # ...
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
