# Robot Mapping, Localization and Navigation

## Problem Statement

This project is designed for robot mapping, localization and navigation. 

The steps for the project is

1. Get the the frame_id

2. Move the robot around to get the map file of the environment (mapping)

3. Launch amcl node for localizing the robot by estimating its pose (localization)

4. Build the move base node to move the robot

5. Launch navigation package and send goals to robot (navigation)

## Dependencies

In this project, I just use `fetch_gazebo` robot to perform the task. It is also possible to use other robot, but the frame_id should be changed relatively. The way to get relevant frame_id refers to the first step.

To get `fetch_gazebo`, run following command in `Bash`:

    sudo apt-get update
    sudo apt-get install ros-$ROS_DISTRO-fetch-gazebo-demo

To get `tf2_tools`, run

    sudo apt-get install ros-$ROS_DISTRO-tf2-tools

To get `navfn` for Dijstra's algorithm, run

    sudo apt-get install ros-$ROS_DISTRO-navfn

To get `global_planner` for A* searching algorithm, run

    sudo apt-get install ros-$ROS_DISTRO-global-planner

To get `gmapping`, run

    sudo apt-get install ros-$ROS_DISTRO-gmapping ```

Besides these, the `keyboard_teleop` is needed for mapping. But it is contained here.

## Procedure

### Step 1. frame_id

Make sure you have `tf2_tools` installed. First, `git clone` this repo under `catkin_ws`. Then run `catkin_make` in that directory and `source ./devel/setup.bash`.

Start robot `fetch_gazebo` by running

    roslaunch fetch_gazebo playground.launch

In another terminal, under `catkin_ws`, run

    rosrun tf2_tools view_frames.py

It will just output a `frame.pdf` under `catkin_ws`. Open it and check the frame it is using.

Beside that, you should also check the topics, especially the `scan`

    rostopic list

### Step 2. mapping

Note: kill all programs before this step

Run following commands one by one

    roslaunch fetch_gazebo playground.launch
    rosrun rviz rviz
    roslaunch keyboard_teleop keyboard_teleop.launch

Before moving robot around, set up `rviz`

After get the whole map, run under `maps` package

    rosservice map_server map_saver -f my_map

### Step 3. localization

The launch package for localization is `my_amcl_launcher`. It will estimate current pose.

You can check the parameters in `my_amcl_params.yaml`. They are very important.

You should also modify the `scan_topic` in `my_amcl_launch.launch` before going on.

### Step 4. move_base

Package `my_move_base_launcher` sets up navigation planner, including both global planner and local planner.

Change global planner in `./launch/my_move_base.launch`

Change local planner in `./launch/my_move_base.launch`

Change footprint in `./params/costmap_common.yaml`

Change robot_base_frame in `./params/costmap_common.yaml`

Change scan topic in `./params/costmap_common.yaml` (mention at beginning)

Change global frame in `./params/my_global_costmap_params.yaml` and `./params/my_local_costmap_params.yaml`

Change parameters for controlling navigation in `my_move_base_param.yaml`

### Step 5. navigation

Note: kill all previous running nodes in terminal

Packages `send_goals` is used for sending goals to `my_move_base`. Currently, the target positions are hard coded inside `send_goal_client.py`

Run following to move the base

    roslaunch fetch_gazebo playground.launch
    roslaunch my_move_base_launcher my_move_base.launch
    roslaunch rviz rviz
    roslaunch send_goals send_goal_client.py

You can choose `Map` and `path` in Rviz for visualizing the costmap and path respectively.

# Next

1. distinguish client and server

2. find a way to call for multiple clients