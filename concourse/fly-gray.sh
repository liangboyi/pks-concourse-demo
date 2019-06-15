fly -t demo login -c http://concourse.pks.vxflex.poc:8080 -u test -p test

fly -t demo set-pipeline -p my-gray-pipeline -c gray-pipeline.yml -l gray-param.yml

fly -t demo unpause-pipeline -p my-gray-pipeline
