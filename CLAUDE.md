# nova_roadrunner

The Roadrunner server package for Nova (`novaframework/nova`). It implements the
`nova_server` behaviour and starts Nova's listeners on Roadrunner.

- Depends on `nova` 1.0 or later.
- Nova's own test suites take this package as a test dependency, and rebar3
  compiles it before Nova there. Nothing here may include a Nova header.
- Branch from a fresh `origin/main`. PRs only, conventional commits.
- The version comes from git tags. Never edit `vsn` in `.app.src`.
- Checks: `rebar3 xref`, `rebar3 dialyzer`, `rebar3 eunit`, `rebar3 ct`.
