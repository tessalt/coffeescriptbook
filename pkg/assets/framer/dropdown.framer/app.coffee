# This imports all the layers for "example2_dropdown" into example2_dropdownLayers1
file = Framer.Importer.load "imported/example2_dropdown"

original_width = file.menu_content.width
original_height = file.menu_content.height

file.menu_content.width = 0
file.menu_content.height = 0

file.menu_content.states.add
  open:
    width: original_width
    height: original_height
  closed:
    width: 0
    height: 0
    
file.menu_content.states.animationOptions = 
  time: 0.2
  curve: "ease-out"

file.menu_icon.on Events.Click, ->
  file.menu_content.states.next()