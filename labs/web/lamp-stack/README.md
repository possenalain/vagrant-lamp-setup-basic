# LAMP Stack Lab

This lab provisions a basic Apache, MySQL, and PHP environment with Vagrant and
VirtualBox. It mounts the local `site/` directory into Apache's document root
so the PHP test page is served directly from the repository.

## Layout

```text
lamp-stack/
|-- Vagrantfile
|-- provision/
|   `-- bootstrap.sh
`-- site/
    `-- index.php
```

## Run

```bash
vagrant up
```

Open the private lab address after provisioning:

```text
http://192.168.33.10/
```

Useful lifecycle commands:

```bash
vagrant ssh
vagrant provision
vagrant halt
vagrant destroy
```

## Notes

- The VM uses `ubuntu/trusty64` and PHP 5-era packages. Treat this as a legacy
  compatibility experiment, not a modern production LAMP baseline.
- MySQL is provisioned with the disposable lab root password `root`.
- Apache serves only the contents of `site/`; provisioning scripts are not
  mounted into the web root.
