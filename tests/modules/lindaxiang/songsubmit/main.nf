#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { SONGSUBMIT } from '../../../../modules/nf-core/songsubmit/main.nf'

workflow test_songsubmit {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    SONGSUBMIT ( input )
}
