(
	local limit, i, currentLayer
	limit = ""
	for i = 1 to 20 do limit += "9"
 	limit = limit as float
	LayerManager.newLayerFromName "..OverLimitObject"
	currentLayer = LayerManager.getLayerFromName "..OverLimitObject"
	currentLayer.on = off
	for i = geometry do
	(
		if (amax #(i.pos.x,i.pos.y,i.pos.z)) > limit or (amin #(i.pos.x,i.pos.y,i.pos.z)) < (limit * -1) do
		(
			currentLayer.addnode i
		)
	)
)
