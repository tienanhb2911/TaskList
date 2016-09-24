//
//  AddNewViewController.swift
//  TaskList
//
//  Created by Bui Tien Anh on 9/24/16.
//  Copyright © 2016 Bui Tien Anh. All rights reserved.
//

import UIKit
protocol AddNewItemDelegate: class {
    func addNewToDoItem(add: AddNewViewController, toDo: ToDo)
}
class AddNewViewController: UIViewController {
    weak var delegate: AddNewItemDelegate?
    
    @IBOutlet weak var NewItemTxt: UITextField!
    @IBAction func AddNewItem(_ sender: AnyObject) {
        let newItem = NewItemTxt.text!
        if newItem == "" {
            return
        }
        else{
            let toDo = ToDo(name: newItem, isCompleted: false)
            delegate?.addNewToDoItem(add: self, toDo: toDo)
            let _ = self.navigationController?.popViewController(animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
