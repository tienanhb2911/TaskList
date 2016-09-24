//
//  ViewController.swift
//  TaskList
//
//  Created by Bui Tien Anh on 9/24/16.
//  Copyright © 2016 Bui Tien Anh. All rights reserved.
//

import UIKit
struct ToDo {
    var name:String
    var isCompleted:Bool = false
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var toDoList:[ToDo] = [ToDo.init(name: "Di cho", isCompleted: false),
                           ToDo.init(name: "Di cho 1", isCompleted: false),
                           ToDo.init(name: "Di cho 2", isCompleted: false),
                           ToDo.init(name: "Di cho 3", isCompleted: false),
                           ToDo.init(name: "Di cho 4", isCompleted: false),
                           ToDo.init(name: "Di cho 5", isCompleted: false),
                           ToDo.init(name: "Di cho 6", isCompleted: false),
                           ToDo.init(name: "Di cho 7", isCompleted: false),
                           ToDo.init(name: "Di cho CN", isCompleted: false),
                           ToDo.init(name: "Di choi", isCompleted: false),
                           ToDo.init(name: "Di choi 1", isCompleted: false),
                           ToDo.init(name: "Di choi 2", isCompleted: false),
                           ToDo.init(name: "Di choi 3", isCompleted: false),
                           ToDo.init(name: "Di choi 4", isCompleted: false),
                           ToDo.init(name: "Di choi 5", isCompleted: false),
                           ToDo.init(name: "Di choi 6", isCompleted: false),
                           ToDo.init(name: "Di choi 7", isCompleted: false),
                           ToDo.init(name: "Di choi CN", isCompleted: false),
                           ToDo.init(name: "Di an", isCompleted: false),
                           ToDo.init(name: "Di an 1", isCompleted: false),
                           ToDo.init(name: "Di an 2", isCompleted: false),
                           ToDo.init(name: "Di an 3", isCompleted: false),
                           ToDo.init(name: "Di an 4", isCompleted: false),
                           ToDo.init(name: "Di an 5", isCompleted: false),
                           ToDo.init(name: "Di an 6", isCompleted: false),
                           ToDo.init(name: "Di an 7", isCompleted: false),
                           ToDo.init(name: "Di an CN", isCompleted: false)
                           ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let toDo = toDoList[indexPath.row]
        let label = cell.viewWithTag(100) as! UILabel
        label.text = toDo.name
        
        return cell
    }
    
}
