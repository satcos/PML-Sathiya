Readme

Directory Structure
RWorkspace (Current Working Directoyr)
	Readme.txt
	LoadPML.R
	RSource
	|___PML
		|___WLEScript.R
		|___pml_write_files.R
		|___Data
			|___pml-testing.csv
			|___pml-training.csv
	|___Utilities
		|___ReadInputData.R
		|___WriteOutputData.R

ReadInputData.R * WriteOutptuData.R are wrapper function for
read.csv and write.csv. It reads/write the files from Data 
folder in basePath

LoadPML.R sources the Utilities files,
sets the basePath value and other functions required for
the project.