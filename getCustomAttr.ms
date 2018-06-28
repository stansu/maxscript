(
	custAttrObj = for o = $ where (o.modifiers["Attribute Holder"]) != undefined collect o
	tempCol = #("name")
	tempString = "name,"
	for o = custAttrObj do
	(
		getDef = (custAttributes.getdefs o.Attribute_Holder)[1]
		if getDef != undefined do	defData = (custAttributes.getDefData getDef)[2]
		for c = defData do
		(
			appendIfUnique tempCol c.string
		)
	)
	tempCount = tempCol.count
	for i = 2 to tempCount do
	(
		tempString += tempCol[i]
		tempString += ","
	)
	tempString += "\n"
	for o = custAttrObj do
	(
		tempString += o.name
		tempString += ","
		for i = 2 to tempCount do
		(
			if isProperty o.Attribute_Holder tempCol[i] then
			(
				tempString += (getProperty o.Attribute_Holder tempCol[i]) as string
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