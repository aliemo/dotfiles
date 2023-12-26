# This file contains aliases for shortcot

## GoToDirectory quick {{{
# Global Directories
alias xxgit="cd $QGITS_PATH"
alias xxwork="cd $QWORKS_PATH"
alias xxpro="cd $QG_PROJS_PATH"
alias xxtools="cd $QTOOLS_PATH"
alias xxtemp="cd /tmp/"
## }}}

alias xrcz=". ~/.zshrc"
alias xrcbash=". ~/.bashrc"

## Python Env {{{
function xvenv () {

        if [ $1 = "c" ]; then
                virtualenv .venv

        elif [ $1 = "s" ]; then
                . .venv/bin/activate

        elif [ $1 = "r" ]; then
                rm -rf .venv


        elif [ $1 = "cn" ]; then
                virtualenv $2

        elif [ $1 = "sn" ]; then
                . $2/bin/activate

        elif [ $1 = "rn" ]; then
                rm -rf $2

        elif [ $1 = "d" ]; then
                deactivate
        fi
}
#}}}

## Emacs {{{
# aliases
alias emacs='emacs -nw'
alias xemacs='emacs-gtk'
## }}}

## Xilinx Tools {{{
# begin sources
XILTOOLS_VERSION='2019.2'
XLNX_TOOLS_V='2023.2'

alias envvivadox='source $XIL_TOOLS_PATH/Vivado/$XILTOOLS_VERSION/.settings64-Vivado.sh'
alias envvitisx='source $XIL_TOOLS_PATH/Vitis/$XILTOOLS_VERSION/.settings64-Vitis.sh'
alias envvhlsx='source $XIL_TOOLS_PATH/Vitis_HLS/$XILTOOLS_VERSION/.settings64-Vitis_HLS.sh'
alias envvivhlsx='source $XIL_TOOLS_PATH/Vivado_HLS/$XILTOOLS_VERSION/.settings64-Vitis_HLS.sh'
alias envdocnavx='source $XIL_TOOLS_PATH/DocNav/.settings64-DocNav.sh'
alias envmcomposerx='source $XIL_TOOLS_PATH/Model_Composer/$XILTOOLS_VERSION/.settings64-Model_Composer.sh'
alias envptlnxx='source $XIL_TOOLS_PATH/petalinux/$XILTOOLS_VERSION/settings.sh'
alias envxise='source $XIL_TOOLS_PATH/XISE/14.7/ISE_DS/settings64.sh'

alias envvivado='source $XLNX_TOOLS_PATH/Vivado/$XLNX_TOOLS_V/.settings64-Vivado.sh'
alias envvitis='source $XLNX_TOOLS_PATH/Vitis/$XLNX_TOOLS_V/.settings64-Vitis.sh'
alias envvhls='source $XLNX_TOOLS_PATH/Vitis_HLS/$XLNX_TOOLS_V/.settings64-Vitis_HLS.sh'
alias envvivhls='source $XLNX_TOOLS_PATH/Vivado_HLS/$XLNX_TOOLS_V/.settings64-Vitis_HLS.sh'
alias envdocnav='source $XLNX_TOOLS_PATH/DocNav/.settings64-DocNav.sh'
alias envmcomposer='source $XLNX_TOOLS_PATH/Model_Composer/$XLNX_TOOLS_V/.settings64-Model_Composer.sh'
alias envptlnx='source $XLNX_TOOLS_PATH/petalinux/$XLNX_TOOLS_V/settings.sh'

function envxiltools () {
        envvivado
        envvivhls
        envvhls
}
# tools run commands
#alias vitis="GTK_THEME=Adwaita vitis"
#alias vivado_hls="GTK_THEME=yara vivado_hls"
## }}}#

## Intel Tools {{{
# begin sources
function envmdlsim () {
        if which vsim >/dev/null; then
                export PATH=${PATH}
        else
                export PATH=${PATH}:$QG_TOOLS_PATH/Intel/intelFPGA_pro/19.4/modelsim_ase/bin
        fi
}

## }}}
## RISCV Tools {{{
# PATH
function rvenv () {
        if which riscv32-unknown-elf-gcc >/dev/null; then
                export PATH=${PATH}
        else
                export PATH=${PATH}:/tools/chains/riscv/toolchain/bin
        fi
}
## }}}


## Open Connnect
function vpnconnent(){
        echo $PROXY_PASSWORD | sudo openconnect $PROXY_SERVER --user=$PROXY_USERNAME --passwd-on-stdin --servercert $PROXY_SECRET
}
## Commands Short Name Aliases {{{
#
alias xo="xdg-open"
alias xls="logo-ls"
## }}}

### Git Related{{{
function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@ ;}
alias gignore="gi $@ > .gitignore"
### }}}
