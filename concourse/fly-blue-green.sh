fly -t demo login -c http://concourse.pks.vxflex.poc:8080 -u test -p test

fly -t demo set-pipeline -p my-blue-green-pipeline -c blue-green-pipeline.yml -l blue-green-param.yml

fly -t demo unpause-pipeline -p my-blue-green-pipeline
