# This imports all the layers for "example2_dropdown" into example2_dropdownLayers1
file = Framer.Importer.load "imported/example2_dropdown"

originalWidth = file.menu_content.width
originalHeight = file.menu_content.height

file.menu_content.width = 0
file.menu_content.height = 0

file.menu_content.states.add
  open:
    width: originalWidth
    height: originalHeight
  closed:
    width: 0
    height: 0
    
file.menu_content.states.animationOptions = 
  time: 0.2
  curve: "ease-out"

file.menu_icon.on Events.Click, ->
  file.menu_content.states.next()