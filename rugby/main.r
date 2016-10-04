rebol []
do load %rugby4.r

set [header script] do/next load/header  %functions.r

do script

serve header/exports
