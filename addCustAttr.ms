(
	tempAttr = attributes Custom_Attributes 
	(
		Parameters main rollout:params
		(
			Factory Type:#String UI:Factory Default:""
			Phase Type:#String UI:Phase Default:""
			System Type:#String UI:System Default:""
			SubSyste Type:#String UI:SubSyste Default:""
			EC Type:#String UI:EC Default:""
			ED Type:#String UI:ED Default:""
			EN Type:#String UI:EN Default:""
			Number Type:#String UI:Number Default:""
			EID Type:#String UI:EID Default:""
			GUID Type:#String UI:GUID Default:""
			CTN Type:#String UI:CTN Default:""
			CIN Type:#String UI:CIN Default:""
			Type Type:#String UI:Type Default:""
			Name Type:#String UI:Name Default:""
			Diameter Type:#String UI:Diameter Default:""
			NO Type:#String UI:NO Default:""
		)
		Rollout Params "Custom Attributes"
		(
			edittext Factory "Factory:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext Phase "Phase:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext System "System:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext SubSyste "SubSyste:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext EC "EC:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext ED "ED:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext EN "EN:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext Number "Number:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext EID "EID:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext GUID "GUID:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext CTN "CTN:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext CIN "CIN:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext Type "Type:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext Name "Name:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext Diameter "Diameter:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
			edittext NO "NO:" Width:140 Height:17 Align:#Center Offset:[0,0] Type:#String labelOnTop:false
		)
	)
	for o = $ do
	(
		if custAttributes.count o == 0 do custAttributes.add o tempAttr
	)
)