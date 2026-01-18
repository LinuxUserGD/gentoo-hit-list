# Disclaimer:

I have a problem, when I see outdated packages, I want to update them as soon as I can

I tried to find solutions, and in turn also founded like minded people with the same question, and even some answers,
but none of them seemed suitable for me, and making something myself is always more flexible then trying to find other
solutions that may not even fulfill my full use case

You may ask why use this when stuff like [repology](https://repology.org/projects/?inrepo=gentoo_ovl_guru&outdated=1)
exists? it's because this version checks ::guru's dev branch, which is easier for contributors because some package may
already be updated in the dev branch, and hasn't been updated to the master branch, so repology doesn't track that.

on top of that repology only compares the versions in all package repositories and treats the latest updated version as
the 'latest build', so what it technically shows as the 'latest version' can actually be outdated from the upstream, to
explain in simpler terms: if upstream has version 3, arch has version 2, and guru has version 2, repology will show that
guru is up to date, because it's just comparing betweent the different different versions. but this repo doesn't do it,
it tries to track upstream and get the latest version data, hence so many api calls.

while some might say that this level of data is not needed, i say that it is needed since just by glancing at the data
you can guess how many versions is it behind

 - Only github is supported for now, will probably add more source checkers later

 - Currently it will check ::guru so i don't burn through my github api calls in a single run, if you want a report
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

<!-- start -->
# [guru dev branch](https://github.com/gentoo/guru.git)
| Package | Downstream | Upstream | Maintainer |
| ------- | ---------- | -------- | ---------- |
| [app-admin/krapplet](https://github.com/gentoo/guru/tree/dev/app-admin/krapplet) | 0.3.1 | [0.4.0](https://gitlab.com/hfernh/krapplet/tags) | [hfern@fernhout.info](https://repology.org/maintainer/hfern@fernhout.info) |
| [app-misc/corectrl](https://github.com/gentoo/guru/tree/dev/app-misc/corectrl) | 1.5.1 | [1.5.2](https://gitlab.com/corectrl/corectrl/tags) | [kostadinshishmanov@protonmail.com](https://repology.org/maintainer/kostadinshishmanov@protonmail.com) |
| [app-misc/ufetch](https://github.com/gentoo/guru/tree/dev/app-misc/ufetch) | 0.3 | [0.4](https://gitlab.com/jschx/ufetch/tags) | [-](-) |
| [app-mobilephone/mobile-config-firefox](https://github.com/gentoo/guru/tree/dev/app-mobilephone/mobile-config-firefox) | 2.1.0 | [4.3.2](https://gitlab.com/postmarketOS/mobile-config-firefox/tags) | [-](-) |
| [app-office/pyspread](https://github.com/gentoo/guru/tree/dev/app-office/pyspread) | 2.4 | [2.4.3](https://gitlab.com/pyspread/pyspread/tags) | [-](-) |
| [dev-python/pyproject2ebuild](https://github.com/gentoo/guru/tree/dev/dev-python/pyproject2ebuild) | 0.0.3 | [0.0.4](https://gitlab.com/oz123/pyproject2ebuild/tags) | [oz.tiram@gmail.com](https://repology.org/maintainer/oz.tiram@gmail.com) |
| [games-misc/cbonsai](https://github.com/gentoo/guru/tree/dev/games-misc/cbonsai) | 1.3.1 | [1.4.2](https://gitlab.com/jallbrit/cbonsai/tags) | [-](-) |
| [games-util/sdl2-gamepad-mapper](https://github.com/gentoo/guru/tree/dev/games-util/sdl2-gamepad-mapper) | 0.0.8 | [0.0.9](https://gitlab.com/ryochan7/sdl2-gamepad-mapper/tags) | [carana2099@gmail.com](https://repology.org/maintainer/carana2099@gmail.com) |
| [gnome-extra/vvmplayer](https://github.com/gentoo/guru/tree/dev/gnome-extra/vvmplayer) | 1.4 | [2.6](https://gitlab.com/kop316/vvmplayer/tags) | [gjdijkman@gjdwebserver.nl](https://repology.org/maintainer/gjdijkman@gjdwebserver.nl) |
| [gui-apps/corestats](https://github.com/gentoo/guru/tree/dev/gui-apps/corestats) | 5.0.0 | [5.0.1](https://gitlab.com/cubocore/coreapps/corestats/tags) | [-](-) |
| [gui-apps/darkman](https://github.com/gentoo/guru/tree/dev/gui-apps/darkman) | 2.2.0 | [2.3.0](https://gitlab.com/WhyNotHugo/darkman/tags) | [mm1ke@gentoo.org](https://repology.org/maintainer/mm1ke@gentoo.org) |
| [gui-libs/libcprime](https://github.com/gentoo/guru/tree/dev/gui-libs/libcprime) | 5.0.0 | [5.0.1](https://gitlab.com/cubocore/libcprime/tags) | [-](-) |
| [gui-libs/libcsys](https://github.com/gentoo/guru/tree/dev/gui-libs/libcsys) | 5.0.0 | [5.0.1](https://gitlab.com/cubocore/libcsys/tags) | [-](-) |
| [media-video/megapixels](https://github.com/gentoo/guru/tree/dev/media-video/megapixels) | 1.4.3 | [1.7.0](https://gitlab.com/postmarketOS/megapixels/tags) | [gjdijkman@gjdwebserver.nl](https://repology.org/maintainer/gjdijkman@gjdwebserver.nl) |
| [mpv-plugin/mpv-plugin-xrandr](https://github.com/gentoo/guru/tree/dev/mpv-plugin/mpv-plugin-xrandr) | 2023.06.19 | [tags/r2023_06_19](https://gitlab.com/lvml/mpv-plugin-xrandr/tags) | [smaniotto.nicola@gmail.com](https://repology.org/maintainer/smaniotto.nicola@gmail.com) |
| [net-im/flare](https://github.com/gentoo/guru/tree/dev/net-im/flare) | 0.12.0 | [0.18.0](https://gitlab.com/schmiddi-on-mobile/flare/tags) | [-](-) |
| [net-misc/peertube-viewer-rs](https://github.com/gentoo/guru/tree/dev/net-misc/peertube-viewer-rs) | 1.8.6 | [1.8.7](https://gitlab.com/peertube-viewer/peertube-viewer-rs/tags) | [-](-) |
| [net-voip/vvmd](https://github.com/gentoo/guru/tree/dev/net-voip/vvmd) | 0.8 | [1.1](https://gitlab.com/kop316/vvmd/tags) | [gjdijkman@gjdwebserver.nl](https://repology.org/maintainer/gjdijkman@gjdwebserver.nl) |
| [sci-physics/ovito](https://github.com/gentoo/guru/tree/dev/sci-physics/ovito) | 3.10.5 | [3.14.1](https://gitlab.com/stuko/ovito/tags) | [strdenis02@gmail.com](https://repology.org/maintainer/strdenis02@gmail.com) |
| [www-servers/hinsightd](https://github.com/gentoo/guru/tree/dev/www-servers/hinsightd) | 0.9.17 | [0.9.21](https://gitlab.com/tiotags/hin9/tags) | [tiotags1@gmail.com](https://repology.org/maintainer/tiotags1@gmail.com) |
<!-- end -->





<sub>Congrats, you made it to the bottom</sub>

<sub>if you can afford to pay my wifi bills, you can support me in patreon: https://www.patreon.com/IngenarelNeoJesus</sub>

<sub>i don't like putting this in my projects, but until my dropout ass finds a way to get a job/proper funding, i have
no choice but to accept donations, which i personally don't want to trust me</sub>
