#!/bin/bash -e

for i in `seq -f '%02g' 0 0`; do
cat <<EOF
    <pipelines group="porter-lab-$i">
      <pipeline name="porter-lab-$i-pack" template="Porter-Pack">
        <materials>
          <git url="https://github.com/adobe-platform/porter-lab.git" branch="lab-$i" />
        </materials>
      </pipeline>
      <pipeline name="porter-lab-$i-deploy" template="Porter-Deploy">
        <params>
          <param name="pack_pipeline">porter-lab-$i-pack</param>
          <param name="porter_env">stage</param>
        </params>
        <materials>
          <pipeline pipelineName="porter-lab-$i-pack" stageName="Pack" />
        </materials>
      </pipeline>
    </pipelines>
EOF
done
