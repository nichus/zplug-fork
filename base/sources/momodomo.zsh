__zplug::sources::momodomo::check()

{
    __zplug::sources::github::check "$argv[@]"
}

__zplug::sources::momodomo::install()
{

    __zplug::sources::github::install "$argv[@]"
}

__zplug::sources::momodomo::update()
{
    __zplug::sources::github::update "$argv[@]"
}

__zplug::sources::momodomo::get_url()
{
    local repo="$1" url_format

    case "$ZPLUG_PROTOCOL" in
        HTTPS | https)
            # https://git::@momodomo.com/%s.git
            url_format="https://git::@git.momodomo.us/${repo}.git"
            ;;
        SSH | ssh)
            # git@momodomo.com:%s.git
            url_format="git@git.momodomo.us:${repo}.git"
            ;;
    esac


    echo "$url_format"
}

__zplug::sources::momodomo::load_plugin()
{

    __zplug::sources::github::load_plugin "$argv[@]"
}

__zplug::sources::momodomo::load_command()
{

    __zplug::sources::github::load_command "$argv[@]"
}

__zplug::sources::momodomo::load_theme()
{
    __zplug::sources::github::load_theme "$argv[@]"
}
