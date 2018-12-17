(
	tempPath = maxFilePath + "claire\*.max"
	tempFiles = getFiles tempPath
	for f in tempFiles do
	(
		mergeMAXFile f #noRedraw #AutoRenameDups #renameMtlDups
	)
)
