# This imports all the layers for "example3_swipe2" into example3_swipe2Layers
file = Framer.Importer.load "imported/example3_swipe2"

w = Framer.Device.screen.width

file.message.draggable.enabled = true

file.message.draggable.speedY = 0

file.message.on Events.DragEnd, ->
  if file.message.midX < 0
    file.message.animate
      properties:
        x: 0 - w
      time: 0.1
      curve: "ease-in"
  else
    file.message.animate
      properties:
        x: 0
      time: 0.2

file.message.on Events.AnimationEnd, ->
  if file.message.midX < 0
    file.delete.animate
      properties: 
        scale: .8
        opacity: 0
      time: 0.2
      curve: "ease-in"