# Disclaimer:

I have a problem, when I see outdated packages, I want to update them as soon as I can

I tried to find solutions, and in turn also founded like minded people with the same question, and even some answers,
but none of them seemed suitable for me, and making something myself is always more flexible then trying to find other
solutions that may not even fulfill my full use case

You may ask why use this when stuff like [repology](https://repology.org/projects/?inrepo=gentoo_ovl_overlay&outdated=1)
exists? it's because this version checks ::overlay's dev branch, which is easier for contributors because some package may
already be updated in the dev branch, and hasn't been updated to the master branch, so repology doesn't track that.

on top of that repology only compares the versions in all package repositories and treats the latest updated version as
the 'latest build', so what it technically shows as the 'latest version' can actually be outdated from the upstream, to
explain in simpler terms: if upstream has version 3, arch has version 2, and overlay has version 2, repology will show that
overlay is up to date, because it's just comparing betweent the different different versions. but this repo doesn't do it,
it tries to track upstream and get the latest version data, hence so many api calls.

while some might say that this level of data is not needed, i say that it is needed since just by glancing at the data
you can guess how many versions is it behind

 - Only github is supported for now, will probably add more source checkers later

 - Currently it will check ::overlay so i don't burn through my github api calls in a single run, if you want a report
 generated for ::gentoo, you should self host it/fork the repo and run the actions manually when you want

 - The report might be outdated, because the github actions will only run once per X ammount of time, the time is
 subject to change depending on my own API usage, so you may want to self run this if you want the complete up to date
 version.

 - Currently it's not modular, but I think I might be able to make this a usable github action for other repos, if you
 want this, hit me up and I maybe will make one, (no promises :3, and if i don't, you can do it yourself)

### Please:
 - Don't use this repo to make low quality/broken version bumps and/or prs and/or spam bug reports, the whole point is
 to upgrade overlay qualities, and make the lives for package maintainers' and contributors' a bit easier

 - If you're a new contributor trying to find packages to bump, [devmanual](https://devmanual.gentoo.org/) is your
 bible, [pkgcheck](https://packages.gentoo.org/packages/dev-util/pkgcheck) scan is your new best friend, and try to join
 the IRC if you can to get help and ask questions to your fellow gentoo mates

### Self host/Fork Host:

 - if you want to run this locally, you need to set a GH_TOKEN env var, i recommend using a [fine grained access
 token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#fine-grained-personal-access-tokens)

 please remember that the output is designed to be put inside a github readme, so it may not be pretty in the terminal

 - if you want to self run this using github actions (i recommend this way), you *should* be just able to fork it,
 create token and set GH_TOKEN secret, then run it through github actions

# [Overlay Master Branch](https://github.com/12101111/overlay/tree/master):

| Package | Downstream | Upstream | Maintainer |
| --- | --- | --- | --- |
| [sys-fs/zfs](https://github.com/12101111/overlay/tree/master/sys-fs/zfs) | 2.4.0 | [zfs-2.4.0](https://github.com/openzfs/zfs/tags) | [gentoo@alexmoch.com](https://repology.org/maintainer/gentoo@alexmoch.com) |
| [dev-util/binaryen](https://github.com/12101111/overlay/tree/master/dev-util/binaryen) | 125 | [ersion_125](https://github.com/WebAssembly/binaryen/tags) | [lssndrbarbieri@gmail.com](https://repology.org/maintainer/lssndrbarbieri@gmail.com) |
| [app-editors/zed](https://github.com/12101111/overlay/tree/master/app-editors/zed) | 0.219.4 | [0.222.0-pre](https://github.com/zed-industries/zed/tags) | [gentoo.2019@r123.de](https://repology.org/maintainer/gentoo.2019@r123.de) |
| [sys-process/systemd-cron](https://github.com/12101111/overlay/tree/master/sys-process/systemd-cron) | 2.5.1 | [2.6.0](https://github.com/systemd-cron/systemd-cron/tags) | [rich0@gentoo.org](https://repology.org/maintainer/rich0@gentoo.org) |
| [llvm-runtimes/libcxx](https://github.com/12101111/overlay/tree/master/llvm-runtimes/libcxx) | 21.1.8 | [llvmorg-22.1.0-rc2](https://github.com/llvm/llvm-project/tags) | [llvm@gentoo.org](https://repology.org/maintainer/llvm@gentoo.org) |
| [llvm-runtimes/openmp](https://github.com/12101111/overlay/tree/master/llvm-runtimes/openmp) | 21.1.8 | [llvmorg-22.1.0-rc2](https://github.com/llvm/llvm-project/tags) | [voyageur@gentoo.org](https://repology.org/maintainer/voyageur@gentoo.org) |
| [llvm-runtimes/libunwind](https://github.com/12101111/overlay/tree/master/llvm-runtimes/libunwind) | 21.1.8 | [llvmorg-22.1.0-rc2](https://github.com/llvm/llvm-project/tags) | [llvm@gentoo.org](https://repology.org/maintainer/llvm@gentoo.org) |
| [llvm-runtimes/libcxxabi](https://github.com/12101111/overlay/tree/master/llvm-runtimes/libcxxabi) | 21.1.8 | [llvmorg-22.1.0-rc2](https://github.com/llvm/llvm-project/tags) | [llvm@gentoo.org](https://repology.org/maintainer/llvm@gentoo.org) |
| [llvm-runtimes/compiler-rt](https://github.com/12101111/overlay/tree/master/llvm-runtimes/compiler-rt) | 21.1.8 | [llvmorg-22.1.0-rc2](https://github.com/llvm/llvm-project/tags) | [llvm@gentoo.org](https://repology.org/maintainer/llvm@gentoo.org) |
| [dev-libs/date](https://github.com/12101111/overlay/tree/master/dev-libs/date) | 3.0.2 | [3.0.4](https://github.com/HowardHinnant/date/tags) | [gentoo@jonas-toth.eu](https://repology.org/maintainer/gentoo@jonas-toth.eu) |






<sub>Congrats, you made it to the bottom</sub>

<sub>if you can afford to pay my wifi bills, you can support me in patreon: https://www.patreon.com/IngenarelNeoJesus</sub>

<sub>i don't like putting this in my projects, but until my dropout ass finds a way to get a job/proper funding, i have
no choice but to accept donations, which i personally don't want to trust me</sub>

