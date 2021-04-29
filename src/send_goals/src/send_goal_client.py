#! /usr/bin/env python

import rospy
from move_base_msgs.msg import MoveBaseGoal, MoveBaseAction
import actionlib
import math
import time

goal = MoveBaseGoal()
i = 0

def define_goal():
    global goal, i
    if i%3 == 0:
        goal.target_pose.header.frame_id = "map" # set the frame_id for map
        goal.target_pose.pose.position.x = 0
        goal.target_pose.pose.position.y = 0
        goal.target_pose.pose.position.z = 0 # in 2D plane
        goal.target_pose.pose.orientation.x = 0 # in 2D plane
        goal.target_pose.pose.orientation.y = 0 # in 2D plane
        goal.target_pose.pose.orientation.z = 0.55
        goal.target_pose.pose.orientation.w = 0.65
    elif i%3 == 1:
        goal.target_pose.header.frame_id = "map" # set the frame_id for map
        goal.target_pose.pose.position.x = 2.76369231539
        goal.target_pose.pose.position.y = 2.77965660842
        goal.target_pose.pose.position.z = 0 # in 2D plane
        goal.target_pose.pose.orientation.x = 0 # in 2D plane
        goal.target_pose.pose.orientation.y = 0 # in 2D plane
        goal.target_pose.pose.orientation.z = 0.0770540631769
        goal.target_pose.pose.orientation.w = 0.99702691606
    else:
        goal.target_pose.header.frame_id = "map" # set the frame_id for map
        goal.target_pose.pose.position.x = -2.61849184953
        goal.target_pose.pose.position.y = 4.00744272248
        goal.target_pose.pose.position.z = 0 # in 2D plane
        goal.target_pose.pose.orientation.x = 0 # in 2D plane
        goal.target_pose.pose.orientation.y = 0 # in 2D plane
        goal.target_pose.pose.orientation.z = 0.890374082698
        goal.target_pose.pose.orientation.w = 0.45522960455
    i+=1

def feedback(feedback):
    print("Start moving...")

rospy.init_node("move_robot_client")
move_client = actionlib.SimpleActionClient("/move_base", MoveBaseAction)
move_client.wait_for_server()

reached_num = 0
while reached_num < 6:
    define_goal()
    move_client.send_goal(goal, feedback_cb=feedback)
    move_client.wait_for_result()
    print("[Result] State: %d" % move_client.get_state())
    move_client.cancel_goal()

    

    reached_num += 1