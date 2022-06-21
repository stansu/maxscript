(
	effect_id = random 1 10000
	For o = selection do
	(
		try
		(
			o.material.override_effect_id=true
			o.material.effect_id = effect_id
		)catch()
		)
		try
		(	
		for m = o.material.materialList do
		(
			m.override_effect_id=true
			m.effect_id = effect_id
		)
		)catch()
	)
)