library(AppliedPredictiveModeling)
library(caret)
library(Hmisc)

Cement BlastFurnaceSlag FlyAsh      Water Superplasticizer CoarseAggregate FineAggregate Age CompressiveStrength
qplot(1:774, CompressiveStrength, colour=x, data=training)
qplot(Superplasticizer, data=training)
x <- cut2(training$Age, g=4, onlycuts=FALSE)


library(caret)
library(AppliedPredictiveModeling)
set.seed(3433)
data(AlzheimerDisease)
adData = data.frame(diagnosis,predictors)
inTrain = createDataPartition(adData$diagnosis, p = 3/4)[[1]]
training = adData[ inTrain,]
testing = adData[-inTrain,]

x <- preProcess(training[, 58:69], method="pca", thresh=0.80)

wihtpca <- train(training[, 1] ~ )


# Project

'accel_belt_x', 'accel_arm_x', 'accel_dumbbell_x', 'accel_forearm_x',
'accel_belt_y', 'accel_arm_y', 'accel_dumbbell_y', 'accel_forearm_y',
'accel_belt_z', 'accel_arm_z', 'accel_dumbbell_z', 'accel_forearm_z',
'gyros_belt_x', 'gyros_arm_x', 'gyros_dumbbell_x', 'gyros_forearm_x',
'gyros_belt_y', 'gyros_arm_y', 'gyros_dumbbell_y', 'gyros_forearm_y',
'gyros_belt_z', 'gyros_arm_z', 'gyros_dumbbell_z', 'gyros_forearm_z',
'magnet_belt_x', 'magnet_arm_x', 'magnet_dumbbell_x', 'magnet_forearm_x',
'magnet_belt_y', 'magnet_arm_y', 'magnet_dumbbell_y', 'magnet_forearm_y',
'magnet_belt_z', 'magnet_arm_z', 'magnet_dumbbell_z', 'magnet_forearm_z',
'pitch_belt', 'pitch_arm', 'pitch_dumbbell', 'pitch_forearm',
'roll_belt', 'roll_arm', 'roll_dumbbell', 'roll_forearm',
'total_accel_belt', 'total_accel_arm', 'total_accel_dumbbell', 'total_accel_forearm',
'yaw_belt', 'yaw_arm', 'yaw_dumbbell', 'yaw_forearm',
'classe'

library(data.table)
library(caret)
inData <- ReadInputData("pml-training.csv")
inData <- inData[, c('accel_belt_x', 'accel_arm_x', 'accel_dumbbell_x', 'accel_forearm_x',
	'accel_belt_y', 'accel_arm_y', 'accel_dumbbell_y', 'accel_forearm_y',
	'accel_belt_z', 'accel_arm_z', 'accel_dumbbell_z', 'accel_forearm_z',
	'gyros_belt_x', 'gyros_arm_x', 'gyros_dumbbell_x', 'gyros_forearm_x',
	'gyros_belt_y', 'gyros_arm_y', 'gyros_dumbbell_y', 'gyros_forearm_y',
	'gyros_belt_z', 'gyros_arm_z', 'gyros_dumbbell_z', 'gyros_forearm_z',
	'magnet_belt_x', 'magnet_arm_x', 'magnet_dumbbell_x', 'magnet_forearm_x',
	'magnet_belt_y', 'magnet_arm_y', 'magnet_dumbbell_y', 'magnet_forearm_y',
	'magnet_belt_z', 'magnet_arm_z', 'magnet_dumbbell_z', 'magnet_forearm_z',
	'pitch_belt', 'pitch_arm', 'pitch_dumbbell', 'pitch_forearm',
	'roll_belt', 'roll_arm', 'roll_dumbbell', 'roll_forearm',
	'total_accel_belt', 'total_accel_arm', 'total_accel_dumbbell', 'total_accel_forearm',
	'yaw_belt', 'yaw_arm', 'yaw_dumbbell', 'yaw_forearm',
	'classe')]

	

modelFit1 <- train(form = classe ~ ., data=inData, method='C5.0Tree', preProcess=c('pca'), trControl=trCtrl)

trCtrl <- trainControl(method = "cv", preProcOptions = list(thresh = 0.95))

testData <- ReadInputData("pml-testing.csv")
testData <- testData[, c('accel_belt_x', 'accel_arm_x', 'accel_dumbbell_x', 'accel_forearm_x',
	'accel_belt_y', 'accel_arm_y', 'accel_dumbbell_y', 'accel_forearm_y',
	'accel_belt_z', 'accel_arm_z', 'accel_dumbbell_z', 'accel_forearm_z',
	'gyros_belt_x', 'gyros_arm_x', 'gyros_dumbbell_x', 'gyros_forearm_x',
	'gyros_belt_y', 'gyros_arm_y', 'gyros_dumbbell_y', 'gyros_forearm_y',
	'gyros_belt_z', 'gyros_arm_z', 'gyros_dumbbell_z', 'gyros_forearm_z',
	'magnet_belt_x', 'magnet_arm_x', 'magnet_dumbbell_x', 'magnet_forearm_x',
	'magnet_belt_y', 'magnet_arm_y', 'magnet_dumbbell_y', 'magnet_forearm_y',
	'magnet_belt_z', 'magnet_arm_z', 'magnet_dumbbell_z', 'magnet_forearm_z',
	'pitch_belt', 'pitch_arm', 'pitch_dumbbell', 'pitch_forearm',
	'roll_belt', 'roll_arm', 'roll_dumbbell', 'roll_forearm',
	'total_accel_belt', 'total_accel_arm', 'total_accel_dumbbell', 'total_accel_forearm',
	'yaw_belt', 'yaw_arm', 'yaw_dumbbell', 'yaw_forearm')]
test2 <- predict(modelFit2, newdata=testData)


pml_write_files <- function(x)	{
	n = length(x)
	for(i in 1:n)	{
		filename = paste0("problem_id_",i,".txt")
		write.table(x[i],file=filename,quote=FALSE,row.names=FALSE,col.names=FALSE)
	}
}



# ===============
# Quiz 3
# ===============
library(caret)
library(AppliedPredictiveModeling)
data(segmentationOriginal)
set.seed(125)
training <- segmentationOriginal[segmentationOriginal[, 2] == "Test", ]
testing <- segmentationOriginal[segmentationOriginal[, 2] == "Train", ]

trainData <- training[, 3:ncol(training)]
model1 <- train(form = Class ~ ., data=trainData, method='rpart')

library(pgmm)
data(olive)
olive = olive[,-1]
olive[, 1] <- paste("Area", olive[, 1])
model2 <- train(form = Area ~ ., data=olive, method='rpart2')
mydata <- as.data.frame(t(colMeans(olive)))
test3 <- predict(model2, newdata=mydata)


library(ElemStatLearn)
data(SAheart)
set.seed(8484)
train = sample(1:dim(SAheart)[1],size=dim(SAheart)[1]/2,replace=F)
trainSA = SAheart[train,]
testSA = SAheart[-train,]

trainSA <- trainSA[, c(2, 3, 6, 7, 8, 9, 10)]
testSA <- testSA[, c(2, 3, 6, 7, 8, 9, 10)]

set.seed(13234)
model3 <- train(form = chd ~ ., data=trainSA, method="glm",  family="binomial")
missClass(trainSA[, 7], model3$finalModel$y)

data(vowel.train)
data(vowel.test) 
set.seed(33833)
vowel.train$y <- as.factor(vowel.train$y)
model4 <- train(form = y ~ ., data=vowel.train, method="rf")
varImp(model4)
