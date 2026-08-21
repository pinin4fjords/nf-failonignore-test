# nf-failonignore-test

Minimal reproduction for [nextflow-io/nextflow#7304](https://github.com/nextflow-io/nextflow/issues/7304):
a task with `errorStrategy 'ignore'` fails, `workflow.failOnIgnore = true` is set, and the
`nextflow` process exits with code 1 - but pre-fix, `workflow.success` still reported `true`
and `workflow.exitStatus` still reported `0` in `onComplete` and any downstream reporting
(including Seqera Platform).

Used to check whether the fix in nextflow-io/nextflow#7356 (merged into `v26.08.0-edge`)
makes Seqera Platform correctly show the run as failed.
