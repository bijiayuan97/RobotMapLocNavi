#! /usr/bin/env python

import rospy
from geometry_msgs.msg import Twist, PoseWithCovarianceStamped
from std_srvs.srv import Empty, EmptyRequest

class MoveHusky():
    def __init__(self):
        # setting velocity publisher
        self.husky_vel_publisher = rospy.Publisher("/cmd_vel", Twist, queue_size=1)
        self.cmd = Twist()
        # subscribe to current estimate pose with covariance
        self.amcl_pose_subscriber = rospy.Subscriber("/amcl_pose", PoseWithCovarianceStamped, self.callback)
        self.subcriber_msg = PoseWithCovarianceStamped()
        # initialize service node
        rospy.wait_for_service("/global_localization")
        self.disperse_particle_service = rospy.ServiceProxy("/global_localization", Empty)
        self.empty_request = EmptyRequest()
        # rate and sleep to control linear and angular velocity
        self.rate = rospy.Rate(10)
        # when shut down
        self.ctrl_c = False
        rospy.on_shutdown(self.shutdownHusky)
    
    def shutdownHusky(self):
        self.ctrl_c = True
        self.stop_Husky()

    def stop_Husky(self):
        rospy.loginfo("Shut down Husky! Stop the robot!")
        self.cmd.linear.x = 0
        self.cmd.angular.z = 0
        i = 0
        while i < 20:
            self.husky_vel_publisher.publish(self.cmd)
            self.rate.sleep() # execute for 2 sec and 20 loops
            i += 1

    def MoveSquare(self):
        i = 0
        while not self.ctrl_c and i < 4:
            # move forward
            rospy.loginfo("###### Move forward ######")
            self.move_forward()
            self.stop_Husky()
            # turn
            rospy.loginfo("###### Turn around ######")
            self.turn_around()
            self.stop_Husky()
            # move as a square
            i += 1

        self.stop_Husky()
        rospy.loginfo("###### Finish moving in a square ######")

    def move_forward(self, linear_speed=0.5, angular_speed=0.0):
        self.cmd.linear.x = linear_speed
        self.cmd.angular.z = angular_speed
        i=0
        while i < 50:
            self.husky_vel_publisher.publish(self.cmd)
            self.rate.sleep()
            i+=1
    
    def turn_around(self, linear_speed=0.0, angular_speed=0.8):
        self.cmd.linear.x = linear_speed
        self.cmd.angular.z = angular_speed
        i = 0
        while i < 25:
            self.husky_vel_publisher.publish(self.cmd)
            self.rate.sleep()
            i+=1
    
    def callback(self, msg):
        self.subcriber_msg = msg # msg is PoseWithCovarianceStamped class

    def call_disperse_service(self):
        rospy.loginfo("###### Call for dispersing service ######")
        self.disperse_particle_service(self.empty_request)

    def calculate_covariance(self):
        rospy.loginfo("###### Calculate particles' covariance ######")
        cov_x = self.subcriber_msg.pose.covariance[0]
        cov_y = self.subcriber_msg.pose.covariance[7]
        cov_z = self.subcriber_msg.pose.covariance[35]
        rospy.loginfo("## Cov X: " + str(cov_x) + " ## Cov Y: " + str(cov_y) + " ## Cov Z: " + str(cov_z))
        cov = (cov_x+cov_y+cov_z)/3

        return cov
    
if __name__ == "__main__":
    rospy.init_node("move_husky_node", anonymous=True)
    MoveHusky_object = MoveHusky()

    cov = 1

    while cov > 0.65:
        MoveHusky_object.call_disperse_service() # disperse particles
        MoveHusky_object.MoveSquare() # move robot as a square
        cov = MoveHusky_object.calculate_covariance()
        rospy.loginfo("###### Current Covariance: " + str(cov))
        if cov > 0.65:
            rospy.loginfo("###### Covariance is greater than 0.65, repeat the whole process")
        else:
            rospy.loginfo("###### Covariance is less than 0.65, robot has localized itself correctly")
            rospy.loginfo("###### Going to stop")
    