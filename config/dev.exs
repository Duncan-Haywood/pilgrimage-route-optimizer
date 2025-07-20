import Config

# Configure your database
config :pilgrimage_route_optimizer, PilgrimageRouteOptimizer.Repo,
  username: "postgres",
  password: System.get_env("DATABASE_PASSWORD") || "postgres",
  hostname: "localhost",
  database: "pilgrimage_route_optimizer_dev",
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we can use it
# to bundle .js and .css sources.
config :pilgrimage_route_optimizer, PilgrimageRouteOptimizerWeb.Endpoint,
  # Binding to loopback ipv4 address prevents access from other machines.
  # Change to `ip: {0, 0, 0, 0}` to allow access from other machines.
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: System.get_env("SECRET_KEY_BASE") || raise("""
    environment variable SECRET_KEY_BASE is missing.
    You can generate one by calling: mix phx.gen.secret
    """),
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:pilgrimage_route_optimizer, ~w(--sourcemap=inline --watch)]},
    tailwind: {Tailwind, :install_and_run, [:pilgrimage_route_optimizer, ~w(--watch)]}
  ]

# Watch static and templates for browser reloading.
config :pilgrimage_route_optimizer, PilgrimageRouteOptimizerWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"priv/static/(?!uploads/).*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"priv/gettext/.*(po)$",
      ~r"lib/pilgrimage_route_optimizer_web/(controllers|live|components)/.*(ex|heex)$"
    ]
  ]

# Enable dev routes for dashboard and mailbox
config :pilgrimage_route_optimizer, dev_routes: true

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Initialize plugs at runtime for faster development compilation
config :phoenix, :plug_init_mode, :runtime

# Include HEEx debug annotations as HTML comments in rendered markup
config :phoenix_live_view, :debug_heex_annotations, true

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false