defmodule VegaLiteLvExampleWeb.PageLive do
  use VegaLiteLvExampleWeb, :live_view

  alias VegaLite, as: Vl

  @impl true
  def render(assigns) do
    ~H"""
    <div>
      <.live_component module={VegaLiteLvExampleWeb.VegaLiteComponent}
        id="example"
        spec={example_vega_lite_spec()}
      />
    </div>
    """
  end

  defp example_vega_lite_spec() do
    Vl.new(width: 400, height: 400)
    |> Vl.data_from_series(iteration: 1..100, score: 1..100)
    |> Vl.mark(:line)
    |> Vl.encode_field(:x, "iteration", type: :quantitative)
    |> Vl.encode_field(:y, "score", type: :quantitative)
    # Get the underlying Vega-Lite specification object
    |> Vl.to_spec()
  end
end
