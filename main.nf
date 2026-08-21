process FAILME {
    errorStrategy 'ignore'

    script:
    """
    echo boom; exit 1
    """
}

workflow {
    FAILME()
}
