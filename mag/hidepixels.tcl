# Unexpand every instance of cell definition MYCELL everywhere
set def "pixel"
foreach inst [cellname list childinst $def] {
    select clear
    select cell $inst
    :expand toggle
}
#:redraw

