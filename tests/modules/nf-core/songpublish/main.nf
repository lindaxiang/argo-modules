#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { SONGPUBLISH } from '../../../../modules/nf-core/songpublish/main.nf'

workflow test_songpublish {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    SONGPUBLISH ( input )
}
