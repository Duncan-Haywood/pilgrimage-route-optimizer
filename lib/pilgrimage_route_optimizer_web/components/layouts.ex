defmodule PilgrimageRouteOptimizerWeb.Layouts do
  @moduledoc """
  This module holds different layouts used by your application.

  See the `layouts` directory for all templates available.
  The "root" layout is a skeleton rendered around every page, the "app" layout is
  set as the default layout on both `use PilgrimageRouteOptimizerWeb, :controller` and
  `use PilgrimageRouteOptimizerWeb, :live_view`.
  """
  use PilgrimageRouteOptimizerWeb, :html

  embed_templates "layouts/*"
end