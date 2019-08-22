#Prepare sample for study using testing sample from a model
python predict.py --path $pathToModel

#ROC study
python rocRatio.py --path $pathToPredictionfile

