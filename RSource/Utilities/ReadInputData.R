#ReadInputData V2
#Argument:File name
#Return Type:Data Frame
cat("\n Loading Utility File ReadInputData.R, Version: 2")
ReadInputData <- function(filename)	{
	#This function will read data from input file and return it
	#File is located in "basePath"\\Data folder.
	#To read data from different folder, variable "finename" should be edited
	filename<-paste(basePath,"Data\\", filename, sep = "")
	data<-read.csv(file=filename,,head=TRUE)
	return(data)
}