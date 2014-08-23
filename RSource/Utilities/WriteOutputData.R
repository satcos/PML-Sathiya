#WriteOutputData V2.1
#Argument:Variable,File Name(Optional)
#Return Type:NULL
cat("\n Loading Utility File WriteOutputData.R, Version: 2.1")
WriteOutputData<-function(outdata,fileName=NULL)
{
	# This function will write outdata in a csv file.
	# Name of the file will same as the variable name passed as argument to this function
	# File is located in "basePath"\\Data folder.
	# To write data to different folder, variable "finename" should be edited
	# If fileName argument is not passed, created a file with variable name, time and date.
	if(is.null(fileName))
	{
		CALL<-as.character(match.call())
		fileName<-paste(CALL[2],"_",format(Sys.time(),"%Y-%m-%d_%H-%M-%S"))
	}
	filePath<-paste(basePath,"Data\\",fileName,".csv", sep = "")
	write.csv(outdata,filePath,row.names = F);
}