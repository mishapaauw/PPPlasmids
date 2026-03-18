awk '/^>/{
    n++
    line = $0
    if (match(line, /[HhRrXxAa](op|ip|vr)[A-Z][A-Za-z0-9]*/)) {
        name = substr(line, RSTART, RLENGTH)
    } else {
        match(line, /^>([^ ]*)/, a); name = a[1] "_unknown"
    }
    printf ">%s_%04d\n", name, n; next
}1' data/T3E_unique.faa
