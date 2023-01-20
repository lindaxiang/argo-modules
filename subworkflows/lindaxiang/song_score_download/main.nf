//
// Run SONG/Score clients to download files
//

include { SONG_GET as songGet } from '../../../modules/lindaxiang/song/get/main'
include { SCORE_DOWNLOAD as scoreDn } from '../../../modules/lindaxiang/score/download/main'


// please update workflow code as needed
workflow SONG_SCORE_DOWNLOAD {
  take:  // update as needed
    study_id
    analysis_id

  main:
    ch_versions = Channel.empty()
   
    songGet(study_id, analysis_id)
    ch_versions = ch_versions.mix(songGet.out.versions)

    scoreDn(songGet.out.json, study_id, analysis_id)
    ch_versions = ch_versions.mix(scoreDn.out.versions)

  emit:
    analysis_json = songGet.out.json
    files = scoreDn.out.files
    versions = ch_versions                     // channel: [ versions.yml ]
}

