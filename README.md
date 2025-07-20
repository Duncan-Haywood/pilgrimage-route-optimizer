# Pilgrimage Route Optimizer

A Phoenix LiveView application for optimizing pilgrimage routes, featuring real-time updates and interactive route planning.

## Overview

This application helps users plan and optimize pilgrimage routes with features including:
- Interactive route planning with real-time updates
- Route optimization algorithms
- Distance and time calculations
- Save and share routes functionality
- Responsive design for mobile and desktop

## Tech Stack

- **Elixir** - Functional programming language built on the Erlang VM
- **Phoenix Framework** - Productive web framework for Elixir
- **Phoenix LiveView** - Rich, real-time user experiences with server-rendered HTML
- **PostgreSQL** - Robust relational database
- **Tailwind CSS** - Utility-first CSS framework
- **Heroicons** - Beautiful hand-crafted SVG icons

## Prerequisites

- Elixir 1.14 or later
- Erlang/OTP 25 or later
- PostgreSQL 12 or later
- Node.js 16 or later (for assets)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/pilgrimage-route-optimizer.git
   cd pilgrimage-route-optimizer
   ```

2. Copy the environment variables example:
   ```bash
   cp .env.example .env
   ```

3. Generate a secret key base:
   ```bash
   mix phx.gen.secret
   ```
   Copy the output and set it as `SECRET_KEY_BASE` in your `.env` file.

4. Install dependencies:
   ```bash
   mix setup
   ```
   This will:
   - Install Elixir dependencies
   - Install Node.js dependencies
   - Create and migrate the database
   - Install assets

5. Start the Phoenix server:
   ```bash
   mix phx.server
   ```
   Or run inside IEx (Interactive Elixir):
   ```bash
   iex -S mix phx.server
   ```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Configuration

### Environment Variables

The application uses environment variables for configuration. See `.env.example` for all available options:

- `SECRET_KEY_BASE` - Phoenix secret key for signing cookies and tokens
- `DATABASE_PASSWORD` - PostgreSQL password (defaults to "postgres" in dev/test)
- `DATABASE_URL` - Full database connection URL (for production)
- `PHX_HOST` - Phoenix server hostname
- `PORT` - Server port number

### Database Setup

For development, the default PostgreSQL configuration should work out of the box. For production, ensure you have a PostgreSQL instance running and configure the `DATABASE_URL` accordingly.

## Development

### Running Tests

```bash
mix test
```

### Code Quality

Run the formatter:
```bash
mix format
```

Run static analysis with Dialyzer:
```bash
mix dialyzer
```

### Live Reload

The development server includes live reload for:
- Elixir code changes
- Templates and LiveView files
- CSS and JavaScript assets

## Project Structure

```
├── assets/          # Frontend assets (JS, CSS)
├── config/          # Application configuration
├── lib/
│   ├── pilgrimage_route_optimizer/      # Business logic
│   └── pilgrimage_route_optimizer_web/  # Web layer (LiveViews, components)
├── priv/
│   ├── repo/        # Database migrations and seeds
│   └── static/      # Static assets
├── test/            # Test files
└── mix.exs          # Project configuration
```

## Deployment

### Production Checklist

Before deploying to production:

1. Set all required environment variables
2. Run database migrations: `mix ecto.migrate`
3. Compile assets: `mix assets.deploy`
4. Consider using a reverse proxy (nginx, Apache)
5. Set up SSL/TLS certificates
6. Configure monitoring and logging

For detailed deployment guides, see the [Phoenix deployment documentation](https://hexdocs.pm/phoenix/deployment.html).

## Migration from Next.js

This application was originally built with Next.js and has been converted to Phoenix LiveView:

- **React Components** → **Phoenix LiveView & Function Components**
- **Next.js Pages** → **Phoenix Routes & LiveViews**
- **React State** → **LiveView State & Assigns**
- **API Routes** → **Phoenix Controllers & Contexts**
- **Client-side routing** → **Live navigation**
- **Webpack** → **Esbuild**

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Security

- Never commit sensitive data like API keys or secrets
- Always use environment variables for configuration
- Keep dependencies updated
- Follow the [OWASP security guidelines](https://owasp.org/)

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Phoenix Framework team for the excellent framework
- Elixir community for the robust ecosystem
- Contributors who helped migrate from Next.js to Phoenix

## Resources

- [Phoenix Documentation](https://hexdocs.pm/phoenix)
- [Phoenix LiveView Documentation](https://hexdocs.pm/phoenix_live_view)
- [Elixir Documentation](https://elixir-lang.org/docs.html)
- [Ecto Documentation](https://hexdocs.pm/ecto)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
