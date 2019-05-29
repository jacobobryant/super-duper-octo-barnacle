An example lib for [trident.build](https://github.com/jacobobryant/trident). Stolen lovingly from
[here](https://github.com/SevereOverfl0w/super-duper-octo-barnacle).

## Setup

Update the value of `:group-id` in `lib.edn`. If you'd like to test production
cljdoc, fork this repo and also update `:github-repo` in `lib.edn`.

If you don't have a local instance of cljdoc already, run `./setup-cljdoc.sh`.
Otherwise, update the value of `:cljdoc-dir` in `lib.edn`.

In a separate terminal, run `./script/cljdoc run` from the cljdoc directory.

Copy `secrets.template` to `secrets` and insert your Clojars credentials.

## Example usage

Generate pom: `./tb pom`

Create skinny jar (after generating pom): `./tb jar`

Install to local maven repo: `./tb install`

Ingest docs into local cljdoc instance (after installing): `./tb doc`

Deploy to Clojars: `(source secrets ; ./tb deploy)`

See `./tb <subcommand> --help` for details. All options can be specified from the command line or from `lib.edn`.
