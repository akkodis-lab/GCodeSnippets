; Script based on an original created by tjjfvi (https://github.com/tjjfvi)
; An up-to-date version of the tjjfvi's original script can be found
; here: https://csi.t6.fyi/
; Note - This script will only work in Cura V4.2 and above!
; --- Global Settings
; layer_height = {layer_height}
; smooth_spiralized_contours = {smooth_spiralized_contours}
; magic_mesh_surface_mode = {magic_mesh_surface_mode}
; machine_extruder_count = {machine_extruder_count}
; --- Single Extruder Settings
; speed_z_hop = {speed_z_hop}
; retraction_amount = {retraction_amount}
; retraction_hop = {retraction_hop}
; retraction_hop_enabled = {retraction_hop_enabled}
; retraction_enable = {retraction_enable}
; retraction_speed = {retraction_speed}
; retraction_retract_speed = {retraction_retract_speed}
; retraction_prime_speed = {retraction_prime_speed}
; speed_travel = {speed_travel}
G21 ;metric values
G90 ;absolute positioning
M82 ;set extruder to absolute mode
M107 ;start with the fan off
G34 ; Z-Stepper alignment
G28 X0 Y0 Z0;move X/Y/Z to min endstops
G29 ; Auto Bed Leveling (BLTouch)
M500; Save Eeprom Values
M420 S1 ; Level Grid Line 2
G1 Z15.0 F{speed_travel} ;move the platform down 15mm
G92 E0 ;zero the extruded length
G1 F200 E3 ;extrude 3mm of feed stock
G92 E0 ;zero the extruded length again
G1 F6000
G0 Y20 F6000
M117 Printing...