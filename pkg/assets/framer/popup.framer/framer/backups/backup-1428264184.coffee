# This imports all the layers for "example1_popup" into example1_popupLayers7
file = Framer.Importer.load "imported/example1_popup"

height = file.popup.height 

file.mustache.scale = 0

file.close.on Events.Click, ->
	file.popup.animate
		properties: 
			opacity: 0
			y: 0 - height
		time: 0.3
		curve: "ease-in"

file.popup.on Events.AnimationEnd, ->
	file.mustache.animate
		properties: 
			scale: 1
		curve:"spring(200,15,0)"

