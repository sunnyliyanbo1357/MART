//
//  TaskModel.swift
//  RSuite
//
//  Created by Yanbo Li on 11/20/16.
//  Copyright © 2016 Yanbo Li. All rights reserved.
//
import UIKit

class Task {
    // MARK: Properties
    
    var scheduleType: String?
    var taskTitle: String
    var taskID: String
    var taskFileName: String?
    var taskClassName: String?
    var taskCompletionTimeString: String
    
    init? (scheduleType: String?, taskTitle: String, taskID: String, taskFileName: String?, taskClassName: String?, taskCompletionTimeString: String){
        self.taskTitle = taskTitle
        self.taskID = taskID
        self.taskCompletionTimeString = taskCompletionTimeString
        
        if taskTitle.isEmpty {
            return nil
        }
    }
}