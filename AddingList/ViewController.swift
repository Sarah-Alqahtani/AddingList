//
//  ViewController.swift
//  AddingList
//
//  Created by admin on 09/12/2021.
//

import UIKit

class ViewController: UIViewController {
    var tasks = ["Exercise for 30 minutes", "Do laundry"]
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var edittext: UITextField!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource=self
    }
    @IBAction func addBtn(_ sender: Any) {
        if edittext.text?.isEmpty==false{
            tasks.append(edittext.text!)
            edittext.text = ""
            self.view.endEditing(true)
            table.reloadData()
            
        }
        
        
        
    }

}
extension ViewController:UITableViewDataSource{
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
            
            return cell
    }
    
    
}
 
