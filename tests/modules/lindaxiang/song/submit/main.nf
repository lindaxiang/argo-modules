#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { SONG_SUBMIT } from '../../../../../modules/lindaxiang/song/submit/main.nf'

workflow test_song_submit {
    
    study_id = params.test_data['rdpc_qa']['study_id']
    payload = file(params.test_data['rdpc_qa']['payload'], checkIfExists: true)
  
    SONG_SUBMIT ( study_id, payload )
}
