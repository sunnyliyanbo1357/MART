//
//  ViewController.swift
//  RSuite
//
//  Created by Yanbo Li on 11/18/16.
//  Copyright © 2016 Yanbo Li. All rights reserved.
//

import UIKit
import ResearchKit
var tasks = [Task]()

class ViewController: UIViewController {
    
    var bytes: NSMutableData?
    var error: NSError?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let request = NSURLRequest(URL: NSURL(string: "https://raw.githubusercontent.com/sunnyliyanbo1357/MART/master/JSON/test.json")!)
        
        // this is what creates the connection and dispatches the varios events to track progression, etc.
        let loader = NSURLConnection(request: request, delegate: self, startImmediately: true)
    }
    
    
    func connection(connection: NSURLConnection!, didReceiveResponse response: NSURLResponse!) {
        // we initialize our buffer
        self.bytes = NSMutableData()
    }
    
    func connection(connection: NSURLConnection!, didReceiveData conData: NSData!) {
        // we append the bytes as they come in
        self.bytes?.appendData(conData)
    }
    
    func connectionDidFinishLoading(connection: NSURLConnection!) {
        
        // we serialize our bytes back to the original JSON structure
        do {
            if let jsonResult: Dictionary = try NSJSONSerialization.JSONObjectWithData(self.bytes!, options: NSJSONReadingOptions.MutableContainers) as? Dictionary<String, AnyObject>{
                
                // we grab the colorsArray element
                let schedules: NSArray = jsonResult["schedules"] as! NSArray
                
                // we iterate over each element of the colorsArray array
                for task in schedules {
                    // we convert each key to a String
                    let scheduleType: String = task["scheduleType"] as! String
                    let taskTitle: String = task["tasks"]!![0]["taskTitle"] as! String
                    let taskID: String = task["tasks"]!![0]["taskID"] as! String
                    let taskCompletionTimeString: String = task["tasks"]!![0]["taskCompletionTimeString"] as! String
                    print("\(taskTitle): \(taskCompletionTimeString)")
                    let task1 = Task(scheduleType: scheduleType, taskTitle: taskTitle, taskID: taskID, taskFileName: nil, taskClassName: nil, taskCompletionTimeString: taskCompletionTimeString)!
                    tasks.append(task1)
                    
                }
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

