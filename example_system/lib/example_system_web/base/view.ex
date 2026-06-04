defmodule ExampleSystemWeb.Base.View do
  defmacro __using__(opts) do
    quote do
      use Phoenix.View,
          Keyword.merge(
            [root: "lib/example_system_web/templates", namespace: ExampleSystemWeb],
            unquote(opts)
          )

      import Phoenix.HTML
      use PhoenixHTMLHelpers

      import ExampleSystemWeb.ErrorHelpers
      use Gettext, backend: ExampleSystemWeb.Gettext
    end
  end
end
