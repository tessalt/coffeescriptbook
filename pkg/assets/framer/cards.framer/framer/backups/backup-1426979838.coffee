colors = ["#f1c40f", "#2ecc71", "#1abc9c", "#3498db", "#9b59b6"]

w = Framer.Device.screen.width
h = Framer.Device.screen.height

for i in [0..4]
	layer = new Layer
		width: Framer.Device.screen.width
		height: Framer.Device.screen.height
		y: 100 * i + Framer.Device.screen.height
		borderRadius: 50
		backgroundColor: colors[i]
			
	layer.animate
		properties: 
			y: 100 * i
		delay: i * 0.2
		time: .2
		curve:"spring(200,30)"