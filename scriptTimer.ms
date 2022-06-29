(
	theTimer = dotNetObject "System.Windows.Forms.Timer"
	fn runScript = (filein "C:\\Program Files\\Autodesk\\3ds Max 2023\\scripts\\Startup\\Maxtools_Self_starting.mse")
	dotnet.addEventHandler theTimer "tick" runScript
	theTimer.interval = 1800000
	theTimer.start()
)
