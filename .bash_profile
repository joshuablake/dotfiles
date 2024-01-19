if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/joshuab/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/joshuab/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<
