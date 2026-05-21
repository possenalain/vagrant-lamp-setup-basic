# Repository Structure

Use this repository as a catalog of reproducible Vagrant labs rather than one
large shared Vagrant environment. The main boundary is the lab directory.

## Preferred lab layout

```text
labs/
`-- <domain>/
    `-- <lab-name>/
        |-- README.md
        |-- Vagrantfile
        |-- provision/
        |   `-- bootstrap.sh
        `-- site/ or files/
```

Choose a domain that will stay useful as the catalog grows. Examples include
`web`, `databases`, `kubernetes`, `networking`, `linux`, and `security`.

## Conventions

1. Keep each lab runnable from its own directory with `vagrant up`.
2. Document what the lab creates, how to reach it, assumptions, credentials,
   and teardown commands in the lab README.
3. Put provisioning scripts under `provision/` and data copied or mounted into
   the guest under a purpose-named directory such as `site/`, `files/`, or
   `fixtures/`.
4. Prefer private networks, forwarded ports, and explicit resource settings so
   a lab is easy to understand before it starts.
5. Keep secrets out of the repository. Use example environment files or
   disposable lab credentials when a tutorial needs values in plain text.
6. Record legacy dependencies clearly. Reproducible experiments may preserve
   an old stack, but the catalog should make that visible.

## Adding a lab

1. Create `labs/<domain>/<lab-name>/`.
2. Add a `README.md` before the experiment grows stale.
3. Keep the `Vagrantfile` at the lab root.
4. Put shell, Ansible, or other provisioners in `provision/`.
5. Add the lab to the catalog table in the root README.
6. Validate the lab from its own directory before sharing it.

Use `shared/` only when a real shared abstraction emerges. Until then, local
lab files are easier to copy, inspect, and change independently.
