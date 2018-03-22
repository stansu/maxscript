(
	custAttrObj = for o = $ where (custAttributes.getDefs o) != undefined collect o
	tempCol = #("name")
	tempString = "name"
	
	for o = custAttrObj do
	(
		getDef = getDefs[1]
		defData = (custAttributes.getDefData getDef)[2]
		for c = defData do
		(
			appendIfUnique tempCol c.string
-- 			print (getProperty o c.string)
		)
	)
	for i = 2 to tempCol.count do
	(
		tempString += ","
		tempString += tempCol[i]
	)
-- 	print tempCol
	tempString += "\n"
	
	for o = custAttrObj do
	(
		for  i = tempCol  do
		(
			if isProperty o i then
			(
				tempString += (getProperty o i) as string
				tempString += ","
			)
			else
			(
				tempString += ","
			)
		)
		tempString = substring tempString 1 -1
		tempString += "\n"
	)
	tempFile = createFile (maxFilePath + (getFilenameFile maxFileName) +".csv")
	format "%" tempString to:tempFile
	close tempFile
)