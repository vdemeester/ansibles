# vdemeester's ansibles playbooks

This is my personals ansible playbook, role & stuff that I use for my
servers and desktop/laptops.

## How does it works

1. Each machines have its own playbook (not sure it's a good practice but meh..).
2. The ``ansible-requirements`` file lists external roles, that are fetched by ``ansible-galaxy``.
3. Running ``make`` will install/update ansible roles and update the ``.gitignore`` file accordingly.

That way a *usual* run is like so :

```bash
$ git pull
# […]
$ make
# […]
$ ansible-playbook hokkaido --sudo --ask-sudo-pass # --connection=local # if on runing on the same machine
sudo password: 

PLAY [hokkaido playbook] ****************************************************** 

GATHERING FACTS *************************************************************** 
ok: [hokkaido]

# […]
```

**Note** that most of the playbook won't really work out of the box because some *sensitive*/*personal* data is not available in this repository.
