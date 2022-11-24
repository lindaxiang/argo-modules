#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { SCOREUPLOAD } from '../../../../modules/nf-core/scoreupload/main.nf'

workflow test_scoreupload {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    SCOREUPLOAD ( input )
}
