### A hit list generator for bored contributors who wanna see which packages are probably? outdated

supports checking:

- [x] GitHub
- [x] GitLab
- [x] Codeberg
- [ ] other Forgejo based repos (since Codeberg is based on Forgejo we only need to copy and paste the Codeberg checker then change the root of the links in the other Forgejo stuff and stuff *should* work out)
- [ ] Sourcehut (GraphQL hurts my brain, PRs are welcome)
- [ ] other GitLab instances (copy and paste the GitLab checker, change the root of the link, stuff *should* work out)
- [ ] SourceForge: TODO, PRs are welcome

<details>
    <summary>Why?</summary>
    
I have a problem, when I see outdated packages, I want to update them as soon as I can

I tried to find solutions, and in turn also founded like-minded people with the same question, and even some answers,
but none of them seemed suitable for me, and making something myself is always more flexible than trying to find other
solutions that may not even fulfill my full use case

You may ask why use this when stuff like [Repology](https://repology.org/projects/?inrepo=gentoo_ovl_guru&outdated=1)
exists? It's because this version checks ::guru's dev branch, which is easier for contributors because some package may
already be updated in the dev branch, and hasn't been updated to the master branch, so Repology doesn't track that.

On top of that Repology only compares the versions in all package repositories and treats the latest updated version as
the 'latest build', so what it technically shows as the 'latest version' can actually be outdated from the upstream, to
explain in simpler terms: if upstream has version 3, arch has version 2, and guru has version 2, Repology will show that
guru is up-to-date, because it's just comparing between the different versions. But this repo doesn't do it, it tries to
track upstream and get the latest version data, hence so many API calls.

While some might say that this level of data is not needed, I say that it is needed since just by glancing at the data
you can guess how many versions is it behind

</details>

<details>
    <summary>READ THIS:</summary>

### Please:
 - Don't use this repo to make low quality/broken version bumps and/or PRs and/or spam bug reports, the whole point is
 to upgrade overlay qualities, and make the lives for package maintainers' and contributors' a bit easier

 - If you're a new contributor trying to find packages to bump, [Devmanual](https://devmanual.gentoo.org/) is your
 bible, [Pkgcheck](https://packages.gentoo.org/packages/dev-util/pkgcheck) scan is your new best friend, and try to join
 the IRC if you can to get help and ask questions to your fellow Gentoo mates

### Self-host/Fork Host:

you need to set these env vars (for locally) / [repo secrets](https://docs.github.com/en/actions/how-tos/write-workflows/choose-what-workflows-do/use-secrets) (for GitHub actions):

- `GH_TOKEN` ([for github.com](https://github.com/settings/personal-access-tokens))
- `GLAB_TOKEN` ([for gitlab.com](https://gitlab.com/-/user_settings/personal_access_tokens?page=1&state=active&sort=expires_asc), with the read_api scope)
- `CODEBERG_TOKEN`([for codeberg.org](https://codeberg.org/user/settings/applications), with read-only access to only public repositories)

for self-hosting, you need to make sure you have a system that has:

- a POSIX compliant shell
- sort command with the `--version-sort` (gnu coreutils has it for example)
- sed command with the extended regex support: `sed -E` (gnu sed has it)
- [GitHub CLI](https://cli.github.com) (should just work in GitHub actions, but probably need to be installed on your system if you want to run locally) I'm too lazy to redo my secrets and setup the GitHub check script to just use curl
- curl
- grep command that supports `-o` (most systems should just have it)

### Config file:

The config file is simple

`guru dev https://github.com/gentoo/guru.git`

There should be one line each for every repo you want to add

It's separated by spaces, the first item is the name of the repo, the second item is the name of the branch that you
wanna check, and the third item is the repo link

</details>

<details>
    <summary>notes:</summary>

 - Currently, it will check ::guru, so I don't burn through my GitHub API calls in a single run, if you want a report
 generated for ::gentoo, you should self-host it/fork the repo and run the actions manually when you want

 - The report might be outdated, because the GitHub actions will only run once per 2 days, the time is
 subject to change depending on my own API usage, so you may want to self run this if you want the complete up-to-date
 version.

 - I think I might be able to make this a usable GitHub action for other repos, if you
 want this, hit me up, and I maybe will make one, (no promises :3, and if I don't, you can do it yourself)

</details>

<!-- LTeX: enabled=false -->
<!-- start -->
<details>
    <summary><a href="https://codeberg.org/LinuxUserGD/overlay.git/tree/dev">LinuxUserGD-overlay dev branch</a></summary>

| Package | Downstream | Upstream | Maintainer |
| ------- | ---------- | -------- | ---------- |
| [app-admin/krapplet](https://github.com/gentoo/guru/tree/dev/app-admin/krapplet) | 0.3.1 | [0.4.0](https://gitlab.com/hfernh/krapplet/tags) | [hfern@fernhout.info](https://repology.org/maintainer/hfern@fernhout.info) |
| [app-admin/oet](https://github.com/gentoo/guru/tree/dev/app-admin/oet) | 0.1.11 | [oet-0.1.11](https://codeberg.org/bcsthsc/overlay-emerge-tool/tags) | [thomas.scholz@protonmail.com](https://repology.org/maintainer/thomas.scholz@protonmail.com) |
| [app-misc/corectrl](https://github.com/gentoo/guru/tree/dev/app-misc/corectrl) | 1.5.1 | [1.5.2](https://gitlab.com/corectrl/corectrl/tags) | [kostadinshishmanov@protonmail.com](https://repology.org/maintainer/kostadinshishmanov@protonmail.com) |
| [app-misc/mymefetch](https://github.com/gentoo/guru/tree/dev/app-misc/mymefetch) | 1.3 | [1.4](https://codeberg.org/MymeType/mymefetch/tags) | [-](-) |
| [app-misc/ufetch](https://github.com/gentoo/guru/tree/dev/app-misc/ufetch) | 0.3 | [0.4](https://gitlab.com/jschx/ufetch/tags) | [-](-) |
| [app-mobilephone/mobile-config-firefox](https://github.com/gentoo/guru/tree/dev/app-mobilephone/mobile-config-firefox) | 2.1.0 | [4.3.2](https://gitlab.com/postmarketOS/mobile-config-firefox/tags) | [-](-) |
| [app-office/pyspread](https://github.com/gentoo/guru/tree/dev/app-office/pyspread) | 2.4 | [2.4.3](https://gitlab.com/pyspread/pyspread/tags) | [-](-) |
| [app-text/komikku](https://github.com/gentoo/guru/tree/dev/app-text/komikku) | 1.100.0 | [1.102.0](https://codeberg.org/valos/Komikku/tags) | [pastalian46@gmail.com](https://repology.org/maintainer/pastalian46@gmail.com) |
| [dev-python/pyproject2ebuild](https://github.com/gentoo/guru/tree/dev/dev-python/pyproject2ebuild) | 0.0.3 | [0.0.4](https://gitlab.com/oz123/pyproject2ebuild/tags) | [oz.tiram@gmail.com](https://repology.org/maintainer/oz.tiram@gmail.com) |
| [dev-util/git-pages-cli](https://github.com/gentoo/guru/tree/dev/dev-util/git-pages-cli) | 1.5.1 | [1.5.2](https://codeberg.org/git-pages/git-pages-cli/tags) | [demize@unstable.systems](https://repology.org/maintainer/demize@unstable.systems) |
| [dev-util/wasmtime](https://codeberg.org/LinuxUserGD/overlay/tree/dev/dev-util/wasmtime) | 38.0.3 | [dev](https://github.com/bytecodealliance/wasmtime/tags) | [pinicarus@protonmail.com](https://repology.org/maintainer/pinicarus@protonmail.com) |
| [games-misc/cbonsai](https://github.com/gentoo/guru/tree/dev/games-misc/cbonsai) | 1.3.1 | [1.4.2](https://gitlab.com/jallbrit/cbonsai/tags) | [-](-) |
| [games-util/sdl2-gamepad-mapper](https://github.com/gentoo/guru/tree/dev/games-util/sdl2-gamepad-mapper) | 0.0.8 | [0.0.9](https://gitlab.com/ryochan7/sdl2-gamepad-mapper/tags) | [carana2099@gmail.com](https://repology.org/maintainer/carana2099@gmail.com) |
| [gnome-extra/vvmplayer](https://github.com/gentoo/guru/tree/dev/gnome-extra/vvmplayer) | 1.4 | [2.6](https://gitlab.com/kop316/vvmplayer/tags) | [gjdijkman@gjdwebserver.nl](https://repology.org/maintainer/gjdijkman@gjdwebserver.nl) |
| [gui-apps/coreimage](https://github.com/gentoo/guru/tree/dev/gui-apps/coreimage) | 5.0.0 | [5.0.1](https://gitlab.com/cubocore/coreapps/coreimage/tags) | [-](-) |
| [gui-apps/corestats](https://github.com/gentoo/guru/tree/dev/gui-apps/corestats) | 5.0.0 | [5.0.1](https://gitlab.com/cubocore/coreapps/corestats/tags) | [-](-) |
| [gui-apps/darkman](https://github.com/gentoo/guru/tree/dev/gui-apps/darkman) | 2.2.0 | [2.3.1](https://gitlab.com/WhyNotHugo/darkman/tags) | [mm1ke@gentoo.org](https://repology.org/maintainer/mm1ke@gentoo.org) |
| [gui-apps/fuzzel](https://github.com/gentoo/guru/tree/dev/gui-apps/fuzzel) | 1.13.1 | [1.14.0](https://codeberg.org/dnkl/fuzzel/tags) | [freijon@pm.me](https://repology.org/maintainer/freijon@pm.me) |
| [gui-apps/wbg](https://github.com/gentoo/guru/tree/dev/gui-apps/wbg) | 1.2.0 | [1.3.0](https://codeberg.org/dnkl/wbg/tags) | [leohdz172@proton.me](https://repology.org/maintainer/leohdz172@proton.me) |
| [gui-libs/libcprime](https://github.com/gentoo/guru/tree/dev/gui-libs/libcprime) | 5.0.0 | [5.0.1](https://gitlab.com/cubocore/libcprime/tags) | [-](-) |
| [gui-libs/libcsys](https://github.com/gentoo/guru/tree/dev/gui-libs/libcsys) | 5.0.0 | [5.0.1](https://gitlab.com/cubocore/libcsys/tags) | [-](-) |
| [media-sound/tenacity](https://github.com/gentoo/guru/tree/dev/media-sound/tenacity) | 1.3.4 | [1.4-alpha1](https://codeberg.org/tenacityteam/tenacity/tags) | [truffle074@gmail.com](https://repology.org/maintainer/truffle074@gmail.com) |
| [media-video/megapixels](https://github.com/gentoo/guru/tree/dev/media-video/megapixels) | 1.4.3 | [1.7.0](https://gitlab.com/postmarketOS/megapixels/tags) | [gjdijkman@gjdwebserver.nl](https://repology.org/maintainer/gjdijkman@gjdwebserver.nl) |
| [mpv-plugin/mpv-plugin-xrandr](https://github.com/gentoo/guru/tree/dev/mpv-plugin/mpv-plugin-xrandr) | 2023.06.19 | [tags/r2023_06_19](https://gitlab.com/lvml/mpv-plugin-xrandr/tags) | [smaniotto.nicola@gmail.com](https://repology.org/maintainer/smaniotto.nicola@gmail.com) |
| [net-im/flare](https://github.com/gentoo/guru/tree/dev/net-im/flare) | 0.12.0 | [0.18.1](https://gitlab.com/schmiddi-on-mobile/flare/tags) | [-](-) |
| [net-misc/peertube-viewer-rs](https://github.com/gentoo/guru/tree/dev/net-misc/peertube-viewer-rs) | 1.8.6 | [1.8.7](https://gitlab.com/peertube-viewer/peertube-viewer-rs/tags) | [-](-) |
| [net-news/newsraft](https://github.com/gentoo/guru/tree/dev/net-news/newsraft) | 0.34 | [newsraft-0.35](https://codeberg.org/newsraft/newsraft/tags) | [eli.burch@burchbytes.com](https://repology.org/maintainer/eli.burch@burchbytes.com) |
| [net-voip/vvmd](https://github.com/gentoo/guru/tree/dev/net-voip/vvmd) | 0.8 | [1.1](https://gitlab.com/kop316/vvmd/tags) | [gjdijkman@gjdwebserver.nl](https://repology.org/maintainer/gjdijkman@gjdwebserver.nl) |
| [sci-physics/ovito](https://github.com/gentoo/guru/tree/dev/sci-physics/ovito) | 3.10.5 | [3.14.1](https://gitlab.com/stuko/ovito/tags) | [strdenis02@gmail.com](https://repology.org/maintainer/strdenis02@gmail.com) |
| [www-apps/forgejo](https://github.com/gentoo/guru/tree/dev/www-apps/forgejo) | 13.0.2 | [14.0.2](https://codeberg.org/forgejo/forgejo/tags) | [artemis@artemis.sh](https://repology.org/maintainer/artemis@artemis.sh) |
| [www-apps/rimgo](https://github.com/gentoo/guru/tree/dev/www-apps/rimgo) | 1.2.1 | [1.4.1](https://codeberg.org/rimgo/rimgo/tags) | [benoit.dufour@mail.com](https://repology.org/maintainer/benoit.dufour@mail.com) |
| [www-apps/soupault-bin](https://github.com/gentoo/guru/tree/dev/www-apps/soupault-bin) | 5.2.0 | [5.2.1](https://codeberg.org/PataphysicalSociety/soupault/tags) | [itai@itaiferber.net](https://repology.org/maintainer/itai@itaiferber.net) |
| [www-servers/hinsightd](https://github.com/gentoo/guru/tree/dev/www-servers/hinsightd) | 0.9.17 | [0.9.21](https://gitlab.com/tiotags/hin9/tags) | [tiotags1@gmail.com](https://repology.org/maintainer/tiotags1@gmail.com) |
| [x11-misc/ly](https://github.com/gentoo/guru/tree/dev/x11-misc/ly) | 1.2.0 | [1.3.2](https://codeberg.org/fairyglade/ly/tags) | [saigon-tech@tuta.io](https://repology.org/maintainer/saigon-tech@tuta.io) |
| [x11-misc/wallust](https://github.com/gentoo/guru/tree/dev/x11-misc/wallust) | 3.3.0 | [3.5.2](https://codeberg.org/explosion-mental/wallust/tags) | [colonia_duck@posteo.net](https://repology.org/maintainer/colonia_duck@posteo.net) |

</details>
<!-- end -->
<!-- LTeX: enabled=true -->


<details>
    <summary>end notes</summary>
<sub>Congrats, you made it to the bottom</sub>

<sub>If you can afford to pay my Wi-Fi bills, you can support me in Patreon: https://www.patreon.com/IngenarelNeoJesus</sub>

<sub>I don't like putting this in my projects, but until my dropout ass finds a way to get a job/proper funding, I have
no choice but to accept donations, which I personally don't want to trust me</sub>
</details>
