#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { CLEARUP } from '../../../../modules/nf-core/clearup/main.nf'

workflow test_clearup {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    CLEARUP ( input )
}
