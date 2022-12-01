import Config

config :aoc,
  session_cookie: System.fetch_env!("ADVENT_OF_CODE_SESSION_COOKIE"),
  cache_dir: "~/.cache/aoc"
