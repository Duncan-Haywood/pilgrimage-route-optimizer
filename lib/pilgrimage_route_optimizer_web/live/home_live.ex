defmodule PilgrimageRouteOptimizerWeb.HomeLive do
  use PilgrimageRouteOptimizerWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="grid grid-rows-[20px_1fr_20px] items-center justify-items-center min-h-screen p-8 pb-20 gap-16 sm:p-20 font-[family-name:var(--font-geist-sans)]">
      <main class="flex flex-col gap-8 row-start-2 items-center sm:items-start">
        <img
          class="dark:invert"
          src="/images/phoenix.svg"
          alt="Phoenix logo"
          width="180"
          height="38"
        />
        <ol class="list-inside list-decimal text-sm/6 text-center sm:text-left font-[family-name:var(--font-geist-mono)]">
          <li class="mb-2 tracking-[-.01em]">
            Get started by editing{" "}
            <code class="bg-black/[.05] dark:bg-white/[.06] px-1 py-0.5 rounded font-[family-name:var(--font-geist-mono)] font-semibold">
              lib/pilgrimage_route_optimizer_web/live/home_live.ex
            </code>
            .
          </li>
          <li class="tracking-[-.01em]">
            Save and see your changes instantly with LiveView.
          </li>
        </ol>

        <div class="flex gap-4 items-center flex-col sm:flex-row">
          <a
            class="rounded-full border border-solid border-transparent transition-colors flex items-center justify-center bg-foreground text-background gap-2 hover:bg-[#383838] dark:hover:bg-[#ccc] font-medium text-sm sm:text-base h-10 sm:h-12 px-4 sm:px-5 sm:w-auto"
            href="https://hexdocs.pm/phoenix/overview.html"
            target="_blank"
            rel="noopener noreferrer"
          >
            <.icon name="hero-book-open" class="h-5 w-5" />
            Phoenix Docs
          </a>
          <a
            class="rounded-full border border-solid border-black/[.08] dark:border-white/[.145] transition-colors flex items-center justify-center hover:bg-[#f2f2f2] dark:hover:bg-[#1a1a1a] hover:border-transparent font-medium text-sm sm:text-base h-10 sm:h-12 px-4 sm:px-5 w-full sm:w-auto md:w-[158px]"
            href="https://phoenixframework.org/blog/build-a-real-time-twitter-clone-in-15-minutes-with-live-view-and-phoenix-1-5"
            target="_blank"
            rel="noopener noreferrer"
          >
            Read our guides
          </a>
        </div>
      </main>
      <footer class="row-start-3 flex gap-6 flex-wrap items-center justify-center">
        <a
          class="flex items-center gap-2 hover:underline hover:underline-offset-4"
          href="https://hexdocs.pm/phoenix/up_and_running.html"
          target="_blank"
          rel="noopener noreferrer"
        >
          <.icon name="hero-document-text" class="h-4 w-4" />
          Learn
        </a>
        <a
          class="flex items-center gap-2 hover:underline hover:underline-offset-4"
          href="https://github.com/phoenixframework/phoenix"
          target="_blank"
          rel="noopener noreferrer"
        >
          <.icon name="hero-window" class="h-4 w-4" />
          Examples
        </a>
        <a
          class="flex items-center gap-2 hover:underline hover:underline-offset-4"
          href="https://phoenixframework.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          <.icon name="hero-globe-alt" class="h-4 w-4" />
          Go to phoenixframework.org →
        </a>
      </footer>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end