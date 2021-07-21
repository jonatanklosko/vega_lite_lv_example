# Vega-Lite plots in Phoenix LiveView

Here you can find an example of rendering graphic specification composed
with the [vega_lite](https://github.com/livebook-dev/vega_lite) package
inside a [phoenix_live_view](https://github.com/phoenixframework/phoenix_live_view)
web application.

## Running

```shell
git clone https://github.com/jonatanklosko/vega_lite_lv_example.git
cd vega_lite_lv_example

mix setup
mix phx.server

# Visit http://localhost:4000
```

## Details

All relevant code is encapsulated in [this commit](https://github.com/jonatanklosko/vega_lite_lv_example/commit/e7ec479a2963f08a9e88ba9cae2457763fb4af68).

Note: when building with Webpack, make sure to use version 5 or higher to avoid build issues.

The rendering process goes as follows:

* we build a Vega-Lite specification using the `vega_lite` package
* the `VegaLiteComponent` renders an element with `VegaLite` hook and
  sends it the specification as an event
* the hook receives the specification and uses the `vega-embed` NPM package
  to render the actual graphic according to the provided specification
