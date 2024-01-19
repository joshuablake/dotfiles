# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Standard .bashrc - Created by Terry Stewart
#    27/08/10
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# SECTION 1 - STANDARD SETUP - DO NOT EDIT
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

if [ ${TERM} != "dumb" ]; then
  test -s ~/.bashrc-local && . ~/.bashrc-local
fi

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

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
