#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { SCOREDOWNLOAD } from '../../../../modules/nf-core/scoredownload/main.nf'

workflow test_scoredownload {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    SCOREDOWNLOAD ( input )
}
