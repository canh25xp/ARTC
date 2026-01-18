---
marp: true
title: ARTC
theme: dracula
paginate: true
size: 16:9
---

# Git

```bash
git apply --ignore-space-change --ignore-whitespace --whitespace=nowarn --allow-empty f1968cb.diff
```

---

## All `git` subcommands

<!--
```sh
git help --all | awk '/^   [a-z0-9-]+/ {count++} END {print count}'
# 196
```

```sh
git help --all | awk '
/^Main Porcelain Commands/ {section="Porcelain"}
/^Ancillary Commands/ {section="Ancillary"}
/^   [a-z0-9-]+/ {count[section]++}
END {
  for (s in count) print s ":", count[s]
}'

# Porcelain: 45
# Ancillary: 151
```
-->

As of today (2026-01-18),
`git` has total of $196$ subcommands ($45$ Porcelain and $151$ Ancillary)

<!-- Porcelain: main commands-->
<!-- Ancillary: supporting commands-->

- Porcelain: `init`, `add`, `commit`, `pull`, `push`, ...
- Ancillary: `config`, `reflog`, `blame`, `prune`, ...

<!--
Just the main commands alone would take me all days to teach about it.
So my best advise is, just play around with it, clone some code, commit some files, revert some changes, ...
-->

---

## Destructive `git`

3 way to manipulate history: `reset`, `revert`, `checkout`

Like most git operation, All 3 of them can be **undo** by `reflog`

These commands can **NOT** be undo:

```sh
git reset --hard
git checkout foo.c
```

It will discard work tree changes (uncommitted files)

If you messed up something, [ohshitgit](https://ohshitgit.com/) might be able to rescue.

---

## Bad practices `git`

1. Force push

```sh
git push --force # Don't
git push --force-with-lease # Do
```

---

## Resources and References

- [So You Think You Know Git - FOSDEM 2024](https://www.youtube.com/watch?v=aolI_Rz0ZqY)
- [So You Think You Know Git Part 2 - DevWorld 2024](https://www.youtube.com/watch?v=Md44rcw13k4)
- [Git Internal](https://www.youtube.com/watch?v=Ala6PHlYjmw)
