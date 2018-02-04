/// @description Insert description here

var layer_id1 = layer_get_id("Backgrounds_1")
var layer_id2 = layer_get_id("Backgrounds_2")
var layer_id3 = layer_get_id("Backgrounds_3")
var layer_id4 = layer_get_id("Backgrounds_4")
var layer_id5 = layer_get_id("Backgrounds_5")

layer_x(layer_id1, lerp(0,camera_get_view_x(view_camera[x]),.8))
layer_x(layer_id2, lerp(0,camera_get_view_x(view_camera[x]),.6))
layer_x(layer_id3, lerp(0,camera_get_view_x(view_camera[x]),.4))
layer_x(layer_id4, lerp(0,camera_get_view_x(view_camera[x]),.2))
layer_x(layer_id5, lerp(0,camera_get_view_x(view_camera[x]),1))