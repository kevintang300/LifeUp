//
//  HomeViewController.swift
//  LifeUp
//
//  Created by Kevin Tang on 6/27/20.
//  Copyright © 2020 KeTapps. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
    /* Table View Variables */
    @IBOutlet weak var tableView: UITableView!
    
    
    /* Button Variables */
    @IBOutlet weak var AddHabitButton: UIButton!
    
    /* Label Variables */
    @IBOutlet weak var AddHabitLabel: UILabel!
    

    
    /* Hitting the AddHabitButton creates a new cell. */
    var rowCount = 0;
    @IBAction func AddHabitAction(_ sender: Any) {
        rowCount = rowCount + 1;
        print("Current Row Count: \(rowCount)");
        self.tableView.reloadData()
    }
    
    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowCount;
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          
            
        let cell = tableView.dequeueReusableCell(withIdentifier: "HabitTableViewCell") as! HabitTableViewCell
        
        
        
    
        
        
        return cell
        
        
      }
      

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
