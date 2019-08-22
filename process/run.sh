for i in $(ls ../DataVRGhost/MergedData/*.h5)
do
	path=$i
	python flatten.py  --path $path
done

for i in $(ls ../DataVRGhost/FlattenData/*.h5)
do      
        path=$i
        python split.py  --path $path
done



