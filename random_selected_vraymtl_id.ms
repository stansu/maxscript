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
)