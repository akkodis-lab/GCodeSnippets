; Script based on an original created by tjjfvi (https://github.com/tjjfvi)
; An up-to-date version of the tjjfvi's original script can be found
; here: https://csi.t6.fyi/
; Note - This script will only work in Cura V4.2 and above!
; --- Global Settings
; layer_height = {​​​​​​​​layer_height}​​​​​​​​
; smooth_spiralized_contours = {​​​​​​​​smooth_spiralized_contours}​​​​​​​​
; magic_mesh_surface_mode = {​​​​​​​​magic_mesh_surface_mode}​​​​​​​​
; machine_extruder_count = {​​​​​​​​machine_extruder_count}​​​​​​​​
; --- Single Extruder Settings
; speed_z_hop = {​​​​​​​​speed_z_hop}​​​​​​​​
; retraction_amount = {​​​​​​​​retraction_amount}​​​​​​​​
; retraction_hop = {​​​​​​​​retraction_hop}​​​​​​​​
; retraction_hop_enabled = {​​​​​​​​retraction_hop_enabled}​​​​​​​​
; retraction_enable = {​​​​​​​​retraction_enable}​​​​​​​​
; retraction_speed = {​​​​​​​​retraction_speed}​​​​​​​​
; retraction_retract_speed = {​​​​​​​​retraction_retract_speed}​​​​​​​​
; retraction_prime_speed = {​​​​​​​​retraction_prime_speed}​​​​​​​​
; speed_travel = {​​​​​​​​speed_travel}​​​​​​​​
M104 S0 ; turn off extruder
M140 S0 ; turn off bed
M107; Fan off
G91 ;relative positioning
G1 E-1 F300 ;retract the filament a bit before lifting the nozzle, to release some of the pressure
G1 Z+0.5 E-5 ;X-20 Y-20 F6000 ;move Z up a bit and retract filament even more
G90 ; absolute positionining
G1 X200 Y0 F6000 ; Fahre an die rechte Seite, sodass Kamerablick frei ist
M84 ;steppers off
M300 P300 S4000 ; Play a Tone; Requires Speaker