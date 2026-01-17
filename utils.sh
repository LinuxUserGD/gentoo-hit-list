findRemote(){
    find "$1"\
        -name 'metadata.xml' |
    while IFS='' read -r line; do
        remoteName="$(
            sed\
                -nE "s/^.*<remote-id\\s*type=(\"|')$2(\"|')>\\s*(\\S+\\/\\S+)\\s*<\\/remote-id>.*$/\\3/p"\
                "$line" 2>/dev/null |
                head -n1
        )"
        [ -n "$remoteName" ] && {
            printf "%s\t%s\n" "$(dirname "$line" )" "$remoteName"
        }
    done
}

getBasePkgName(){
    fileName="$1"
    [ -f "$fileName" ] && fileName="$( dirname "$fileName" )"
    echo "$fileName" | sed -E 's/([^/]*\/)*([^/]+\/[^/]+)$/\2/'
}

getPkgName(){
    fileName="$1"
    [ -f "$fileName" ] && fileName="$( dirname "$fileName" )"
    echo "$fileName" | sed -E 's/([^/]*\/)*([^/]+)$/\2/'
}

getLatestEbuildVersion(){
    find "$1"\
        -maxdepth 1\
        -type f\
        -name '*.ebuild'\
        -printf '%f\n' |
    grep -v '9999.ebuild' |
    sort --version-sort --reverse |
    head -n1 |
    sed -E "s/$(
       getPkgName "$1"
       )-([^_\\-]+).*\.ebuild/\\1/"
}

maintainerCheck(){
    if grep -q -E 'maintainer.*needed' "$1/metadata.xml"; then
        printf '-'
    else
        while IFS='' read -r metaDataMaintainerSearchLine; do
            case $metaDataMaintainerSearchLine in
                *'<maintainer'*)
                    maintainerTagFound=1
                    ;;
                *'</maintainer>'*)
                    maintainerTagFound=0
                    ;;
                *'<email>'*'</email>'*)
                    if [ "$maintainerTagFound" -eq 1 ]; then
                        maintainer="$metaDataMaintainerSearchLine"
                        maintainer="${maintainer#*<email>}"
                        maintainer="${maintainer%</email>*}"
                        printf "%s" "$maintainer"
                        break
                    fi
                    ;;
            esac
        done < "$1/metadata.xml"
    fi
}
