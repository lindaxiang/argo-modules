#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { SCORE_DOWNLOAD } from '../../../../../modules/lindaxiang/score/download/main.nf'

workflow test_score_download {
    
    study_id = params.test_data['rdpc_qa']['study_id']
    analysis_id = params.test_data['rdpc_qa']['analysis_id']
    analysis = params.test_data['rdpc_qa']['analysis']

    SCORE_DOWNLOAD ( analysis, study_id, analysis_id )
}
