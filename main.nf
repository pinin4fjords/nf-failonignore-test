process FAILME {
    container 'alpine:3.19'
    errorStrategy 'ignore'

    script:
    """
    echo boom; exit 1
    """
}

workflow {
    FAILME()
}
