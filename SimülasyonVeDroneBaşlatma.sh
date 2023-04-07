#!/bin/bash
gnome-terminal -- roscore &&
#L TurkLoydu &&
# gnome-terminal -- sim_vehicle.py -v ArduCopter -f gazebo-iris-optflow-nongps-oa --debug -w --console --map -l 40.835476,29.277494,85.2,0
gnome-terminal -- sim_vehicle.py -v ArduCopter -f gazebo-bee-gps-oa-gimbal --debug -w --console --map -l 40.83693305,29.27599826,15,0
# ps -ef | grep gzserver | grep -v grep | awk '{print $2}' | xargs kill &&
# gnome-terminal -- gzserver --verbose /home/evren/catkin_ws/src/iq_sim_evren/worlds/evrens_trial.world -s libgazebo_ros_api_plugin.so
# gnome-terminal -- gazebo --verbose /home/evren/catkin_ws/src/iq_sim_evren/worlds/evrens_trial_ship_bkp.world -s libgazebo_ros_api_plugin.so &&
# gnome-terminal -- gazebo --verbose /home/evren/catkin_ws/src/iq_sim_evren/worlds/turkloydu_bos.world -s libgazebo_ros_api_plugin.so &&
gnome-terminal -- gazebo --verbose /home/evren/catkin_ws/src/iq_sim_evren/worlds/TrainingWorld.world -s libgazebo_ros_api_plugin.so &&
# gnome-terminal -- gazebo --verbose /home/evren/catkin_ws/src/iq_sim_evren/worlds/emat_drone_bumper.world -s libgazebo_ros_api_plugin.so &&
sleep 5 &&
# gnome-terminal -- rosrun web_video_server web_video_server &&
# gnome-terminal -- rosrun rqt_gui rqt_gui -p emat_drone2
# gnome-terminal -- rosrun image_rotate image_rotate image:=/webcam_gimbal/emat_drone/gimbal_view rotated/image:=/webcam_gimbal/emat_drone/gimbal_view_rotated 
gnome-terminal -- roslaunch iq_sim apm.launch &&
gnome-terminal -- rosrun image_view image_view image:=/webcam_rod/emat_drone/rod_view
gnome-terminal -- roslaunch ros_rtsp rtsp_streams.launch
gnome-terminal -- rostopic echo bumper_vals
