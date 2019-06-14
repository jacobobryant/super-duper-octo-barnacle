An example lib for [trident.build](https://github.com/jacobobryant/trident).
Stolen lovingly from
[here](https://github.com/SevereOverfl0w/super-duper-octo-barnacle).

## Setup

Update the value of `:group-id` in `deps.edn`. If you'd like to test production
cljdoc, fork this repo and also update `:github-repo` in `deps.edn`.

If you don't have a local instance of cljdoc already, run `./setup-cljdoc.sh`.
Otherwise, update the value of `:cljdoc-dir` in `deps.edn`.

In a separate terminal, run `./script/cljdoc run` from the cljdoc directory.

Copy `secrets.template` to `secrets` and insert your Clojars credentials. (Only
needed for `task deploy`).

Install `[Grenchman](https://github.com/technomancy/grenchman)`, or modify
`bin/task` to use `bin/trepl.py`.

## Example usage

First run `(source secrets ; bin/repl)`. Open a separate terminal for the
following commands. `task` will execute build tasks through this repl.

For convenience, run `source bin/enter` to put `bin` on your path.

See commands: `task -h`. (The first command you run with `task` will be slow,
but subsequent commands will be fast).

Generate pom: `task pom`

Create skinny jar (after generating pom): `task jar`

Install to local maven repo: `task install`

Ingest docs into local cljdoc instance (after installing): `task doc`

Deploy to Clojars: `task deploy`

See `task <subcommand> --help` for details. All options can be specified from
the command line or from `deps.edn`.
