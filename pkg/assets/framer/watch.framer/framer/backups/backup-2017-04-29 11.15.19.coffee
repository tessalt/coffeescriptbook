h = Framer.Device.screen.height

bg = new Layer 
  x:0, y:0, width:312, height:366, image:"images/example4_bg.png"

watch_file = Framer.Importer.load "imported/example4_watch"

icon = new Layer 
  x:0, y:0, width:196, height:196, image:"images/example4_icon.png"
  
notification = watch_file.notification

icon.centerX()
icon.y = h

notification.y = h

icon.animate
  properties: 
    midY: h / 2
  time: .4
  curve: "spring(120,18,0)"
    
bg.animate
  properties: 
    blur: 15
    opacity: .5
  time: .4
  
icon.on Events.AnimationEnd, ->
  icon.animate
    properties: 
      scale: .5
      x: -29
      y: -49
    time: .3
    curve: "spring(320,26,0)"
  notification.animate
    properties: 
      y: 49
    time: .3
    curve: "spring(320,26,0)"

button = watch_file.button

button.on Events.Click, ->
  notification.animate
    properties:
      opacity: 0
    time: .3
  icon.animate
    properties:
      opacity: 0
    time: .3
  bg.animate
    properties:
      opacity: 1
      blur: 0
    time: .3
