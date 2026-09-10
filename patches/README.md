# Upstream provenance

`upstream/` holds the commits of
[zephyrproject-rtos/zephyr#105778](https://github.com/zephyrproject-rtos/zephyr/pull/105778)
("[RFC] drivers: remoteproc: add OpenAMP remote-side driver", Simon Maurer),
exactly as published on `mausys/zephyr` branch `remoteproc`:

| Patch | Commit | Vendored? |
|---|---|---|
| 0001 | `4bf2f73` dts: vendor-prefixes: add openamp | Only the `openamp` line, in `dts/bindings/vendor-prefixes.txt` |
| 0002 | `7a51184` drivers: remoteproc: add OpenAMP remote-side driver | Yes, byte-identical, except the two one-line hooks into Zephyr's `drivers/CMakeLists.txt` and `drivers/Kconfig`, which this module's top-level `CMakeLists.txt` and `Kconfig` replace |
| 0003 | `68ea12d` logging: backend: add RPMsg log backend | No |

The first commit in this repository is 0002 as published. Every later commit
that touches `drivers/`, `include/` or `dts/` is written against Zephyr-tree
paths, so `git format-patch` output applies to a Zephyr checkout that carries
#105778.
