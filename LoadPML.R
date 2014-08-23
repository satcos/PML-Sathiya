# This Function is used to load other fucntion to work space.
# Input: void
# Output: Void
# It tells where the other files and data are present
LoadPML <- function()	{

	# Parameter
	# Base path on which other sorce files present
	basePath<<-"RSource\\PML\\"
	
	# General Function to read input data
	source("RSource\\Utilities\\ReadInputData.R")
	# General Function to write output data
	source("RSource\\Utilities\\WriteOutputData.R")

	source(paste(basePath, "pml_write_files.R",sep=""))
	cat("\n All Required files are loaded successfully\n")
	
}
