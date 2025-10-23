if global.isFim{
	exit
}
if ! global.AlturaCerta{
	y ++
	if y >= 475{
		global.AlturaCerta= true
	}
}

