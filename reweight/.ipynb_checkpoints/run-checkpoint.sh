:<<EOF
path="../DataVRGhost/ReducedDijets"
for i in 361024 361025 361026 361027 361028 361029 361030
do
  python MergeDijetsDatasets.py --path $path --dsid $i
done
EOF

#!/bin/bash
cd /global/project/projectdirs/atlas/massDecorrelatedXbb/adversarial-wei1
source activate.sh

cd /global/project/projectdirs/atlas/massDecorrelatedXbb/Xbb_part3/reweight
python labelDijetsDatasets.py --path ../../adversarial-wei1/datasets

path="../DataVRGhost/ReducedDijets"
for i in 361024 361025 361026 361027 361028 361029 361030
do
	python MergeDijetsDatasets.py --path $path --dsid $i
done

