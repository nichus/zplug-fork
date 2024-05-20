__zplug::sources::modomomo::check()

{
    __zplug::sources::github::check "$argv[@]"
}

__zplug::sources::modomomo::install()
{

    __zplug::sources::github::install "$argv[@]"
}

__zplug::sources::modomomo::update()
{
    __zplug::sources::github::update "$argv[@]"
}

__zplug::sources::modomomo::get_url()
{
    local repo="$1" url_format

    case "$ZPLUG_PROTOCOL" in
        HTTPS | https)
            # https://git::@modomomo.com/%s.git
            url_format="https://git::@git.modomomo.us/${repo}.git"
            ;;
        SSH | ssh)
            # git@modomomo.com:%s.git
            url_format="git@git.modomomo.us:${repo}.git"
            ;;
    esac


    echo "$url_format"
}

__zplug::sources::modomomo::load_plugin()
{

    __zplug::sources::github::load_plugin "$argv[@]"
}

__zplug::sources::modomomo::load_command()
{

    __zplug::sources::github::load_command "$argv[@]"
}

__zplug::sources::modomomo::load_theme()
{
    __zplug::sources::github::load_theme "$argv[@]"
}
