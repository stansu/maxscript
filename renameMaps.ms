(
	nameCounter = 1
	for t = texturemap.classes do
	(
		for m = (getclassinstances t) do
		(
			m.name = "Map #"+(nameCounter as string)
			nameCounter += 1
		)
	)
)
