node {
    stage "build container"

    sh "docker build -t benediktkr/poetry:latest ."

    stage "push build"
    sh "docker push benediktkr/poetry:latest"



    archiveArtifacts artifacts: 'Dockerfile'
}
