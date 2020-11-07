node {
    stage "build container"

    sh "docker build -t poetry ."

    stage "tag build"
    sh "docker tag poetry benediktkr/poetry:latest"

    stage "push build"
    sh "docker push benediktkr/poetry:latest"



    archiveArtifacts artifacts: 'Dockerfile'
}
