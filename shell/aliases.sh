# This file contains aliases for shortcot

## GoToDirectory quick {{{
# Global Directories
alias xxgit="cd $QGITS_PATH"
alias xxwork="cd $QWORKS_PATH"
alias xxpro="cd $QG_PROJS_PATH"
alias xxtools="cd $QTOOLS_PATH"
alias xxtemp="cd /tmp/"
## }}}

## Xilinx Tools {{{
# begin sources 
alias envvivado='source $XIL_TOOLS_PATH/Vivado/2019.2/.settings64-Vivado.sh'
alias envvitis='source $XIL_TOOLS_PATH/Vitis/2019.2/.settings64-Vitis.sh'
alias envdocnav='source $XIL_TOOLS_PATH/DocNav/.settings64-DocNav.sh'
alias envmcomposer='source $XIL_TOOLS_PATH/Model_Composer/2019.2/.settings64-Model_Composer.sh'
alias envxiltools='source $XIL_TOOLS_PATH/Vivado/2019.2/settings64.sh'
alias envptlnx='source $XIL_TOOLS_PATH/petalinux/2019.2/settings.sh'
alias envxise='source $XIL_TOOLS_PATH/ISE_DS/settings64.sh'

# tools run commands
#alias vitis="GTK_THEME=Adwaita vitis"
#alias vivado_hls="GTK_THEME=Adwaita vivado_hls"
## }}}#

## Intel Tools {{{
# begin sources
alias envmdlsim='export PATH=${PATH}:$QG_TOOLS_PATH/Intel/intelFPGA_pro/19.4/modelsim_ase/bin'

## }}}
## Eclipse :( {{{
# alias eclipse="GTK_THEME=Adwaita eclipse"
## }}}

## Open Connnect
function vpnconnent(){
        echo $PROXY_PASSWORD | sudo openconnect $PROXY_SERVER --user=$PROXY_USERNAME --passwd-on-stdin 
}
## Commands Short Name Aliases {{{
#
alias xo="xdg-open"
alias xls="logo-ls"
alias ls="xls"
alias xrm="trash-put"
## }}}