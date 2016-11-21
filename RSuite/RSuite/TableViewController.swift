//
//  TableViewController.swift
//  RSuite
//
//  Created by Yanbo Li on 11/20/16.
//  Copyright © 2016 Yanbo Li. All rights reserved.
//

import UIKit

//var tasks = [Task]()

class TableViewController: UITableViewController {
    
//    var bytes: NSMutableData?
//    var error: NSError?

    override func viewDidLoad() {
        super.viewDidLoad()
//        loadSampleTasks()
//        
//        // Do any additional setup after loading the view, typically from a nib.
//        let request = NSURLRequest(URL: NSURL(string: "https://raw.githubusercontent.com/sunnyliyanbo1357/MART/master/JSON/test.json")!)
//        
//        // this is what creates the connection and dispatches the varios events to track progression, etc.
//        let loader = NSURLConnection(request: request, delegate: self, startImmediately: true)
//        
    }
//    func loadSampleTasks() {
//        let task1 = Task(scheduleType: nil, taskTitle: "About You", taskID: "1", taskFileName: nil, taskClassName: nil, taskCompletionTimeString: "6 questions")!
//        let task2 = Task(scheduleType: nil, taskTitle: "Daily Survey", taskID: "2", taskFileName: nil, taskClassName: nil, taskCompletionTimeString: "5 questions")!
//        let task3 = Task(scheduleType: nil, taskTitle: "Weekly Survey", taskID: "3", taskFileName: nil, taskClassName: nil, taskCompletionTimeString: "8 questions")!
//        tasks += [task1, task2, task3]
//    }
//    
//    func connection(connection: NSURLConnection!, didReceiveResponse response: NSURLResponse!) {
//        // we initialize our buffer
//        self.bytes = NSMutableData()
//    }
//    
//    func connection(connection: NSURLConnection!, didReceiveData conData: NSData!) {
//        // we append the bytes as they come in
//        self.bytes?.appendData(conData)
//    }
//    
//    func connectionDidFinishLoading(connection: NSURLConnection!) {
//        
//        // we serialize our bytes back to the original JSON structure
//        do {
//            if let jsonResult: Dictionary = try NSJSONSerialization.JSONObjectWithData(self.bytes!, options: NSJSONReadingOptions.MutableContainers) as? Dictionary<String, AnyObject>{
//                
//                // we grab the colorsArray element
//                let schedules: NSArray = jsonResult["schedules"] as! NSArray
//                
//                // we iterate over each element of the colorsArray array
//                for task in schedules {
//                    // we convert each key to a String
//                    let scheduleType: String = task["scheduleType"] as! String
//                    let taskTitle: String = task["tasks"]!![0]["taskTitle"] as! String
//                    let taskID: String = task["tasks"]!![0]["taskID"] as! String
//                    let taskCompletionTimeString: String = task["tasks"]!![0]["taskCompletionTimeString"] as! String
//                    print("\(taskTitle): \(taskCompletionTimeString)")
//                    let task1 = Task(scheduleType: scheduleType, taskTitle: taskTitle, taskID: taskID, taskFileName: nil, taskClassName: nil, taskCompletionTimeString: taskCompletionTimeString)!
//                    tasks.append(task1)
//                    print(tasks.count)
//                    
//                }
//            }
//        } catch let error as NSError {
//            print(error.localizedDescription)
//        }
//    }
//
//
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        NSLog("Tasks count: ", tasks.count)
        return tasks.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "TaskTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! TaskTableViewCell
        
        let task = tasks[indexPath.row]

        cell.taskTitleLabel.text = task.taskTitle
        cell.taskSubtitleLabel.text = task.taskCompletionTimeString

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
