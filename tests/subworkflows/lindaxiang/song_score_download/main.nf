#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { SONG_SCORE_DOWNLOAD } from '../../../../subworkflows/lindaxiang/song_score_download/main.nf'

workflow test_song_score_download {
    
    study_id = params.test_data['rdpc_qa']['study_id']
    analysis_id = params.test_data['rdpc_qa']['analysis_id_download']

    SONG_SCORE_DOWNLOAD ( study_id, analysis_id )
}
