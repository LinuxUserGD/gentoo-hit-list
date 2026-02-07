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
    <summary><a href="https://codeberg.org/LinuxUserGD/overlay.git/tree/dev">overlay dev branch</a></summary>

| Package | Downstream | Upstream | Maintainer |
| ------- | ---------- | -------- | ---------- |
| [dev-util/wasmtime](https://codeberg.org/LinuxUserGD/overlay/tree/dev/dev-util/wasmtime) | 38.0.3 | [dev](https://github.com/bytecodealliance/wasmtime/tags) | [pinicarus@protonmail.com](https://repology.org/maintainer/pinicarus@protonmail.com) |

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
