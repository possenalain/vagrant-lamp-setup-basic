# Vagrant Labs

This repository is a catalog of repeatable local infrastructure labs built
with Vagrant. Each lab should be small enough to run on its own, documented
enough to revisit later, and isolated enough that experiments do not leak into
the repository root.

## Repository layout

```text
.
|-- docs/                 # Repository conventions and authoring notes
|-- labs/                 # Runnable Vagrant environments grouped by domain
|   `-- web/
|       `-- lamp-stack/   # Basic Apache, MySQL, and PHP lab
`-- README.md             # Catalog entry point
```

The structure is intentionally shallow:

- `labs/<domain>/<lab>/` is the unit you run with `vagrant up`.
- A lab owns its `Vagrantfile`, provisioning, fixtures, and lab notes.
- Guest-facing project files live apart from provisioning when a synced folder
  is involved.
- Cross-lab helpers should be added only after two or more labs need the same
  behavior.

See [docs/repository-structure.md](docs/repository-structure.md) for the lab
layout and the checklist for adding another experiment.

## Lab catalog

| Lab | Domain | Purpose | Status |
| --- | --- | --- | --- |
| [LAMP stack](labs/web/lamp-stack/README.md) | Web | Basic Apache, MySQL, and PHP environment | Legacy base image |

## Quick start

Run a lab from its own directory:

```bash
cd labs/web/lamp-stack
vagrant up
```

Then use the lab README for its network addresses, credentials, and teardown
notes. Vagrant runtime state is intentionally ignored so the repository stays
portable between machines.
