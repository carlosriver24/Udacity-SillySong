//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {

    var mazeController: MazeController!

    func moveComplexRobot(myRobot: ComplexRobotObject) {
      
    // You may want to paste your Part 2 implementation of moveComplexRobot() here
        let robotIsBlocked = isFacingWall(myRobot, direction: myRobot.direction)
        let myWallInfo = checkWalls(myRobot)
        
        
        let isThreeWayJunction = (myWallInfo.numberOfWalls == 1)
        let isTwoWayPath = (myWallInfo.numberOfWalls == 2)
        let isDeadEnd = (myWallInfo.numberOfWalls == 3)
        

        // TODO: If the robot encounters a three way junction and there IS a wall ahead, it should randomly rotate right or left. Uncomment the code below.
        if isThreeWayJunction && robotIsBlocked {
            randomlyRotateRightOrLeft(myRobot)
            
        } else if isThreeWayJunction && !robotIsBlocked {
            continueStraightOrRotate(myRobot, wallInfo: myWallInfo)
            //turnTowardClearPath(myRobot, wallInfo: myWallInfo)
        }
        
        
        if isTwoWayPath && !robotIsBlocked {
            //continueStraightOrRotate(myRobot, wallInfo: myWallInfo)
            myRobot.move()
            
        } else if isTwoWayPath && robotIsBlocked {
            //randomlyRotateRightOrLeft(myRobot)
            turnTowardClearPath(myRobot, wallInfo: myWallInfo)
        }
        
        
        if isDeadEnd {
            if robotIsBlocked {
                //randomlyRotateRightOrLeft(myRobot)
                myRobot.rotateLeft()
                
            } else if !robotIsBlocked {
                //continueStraightOrRotate(myRobot, wallInfo: myWallInfo)
                myRobot.move()
            }
        }
        
        //print(turnTowardClearPath(myRobot, wallInfo: myWallInfo))
//                print(isThreeWayJunction)
//                print(isTwoWayPath)
//                print(isDeadEnd)
    }
    
    func previousMoveIsFinished(robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
    
}