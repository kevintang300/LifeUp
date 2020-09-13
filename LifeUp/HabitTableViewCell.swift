//
//  HabitTableViewCell.swift
//  LifeUp
//
//  Created by Kevin Tang on 6/27/20.
//  Copyright © 2020 KeTapps. All rights reserved.
//

import UIKit

class HabitTableViewCell: UITableViewCell {
    
    
    /* Increasing the streak count */
    @IBOutlet weak var streakButton: UIButton!
    @IBOutlet weak var streakCountLabel: UILabel!
    var count = 0;

    
    var breakCount = 0;
    var points = 0;
    
    
    /* Habit TItle */
    @IBOutlet weak var habitTitleTextField: UITextField!
    
    /* Point Tracker */
    @IBOutlet weak var habitPointsLabel: UILabel!
    
    /* Streak Break Count */
    @IBOutlet weak var streakBreakCountLabel: UILabel!
    
    
    /* reset button */
    @IBOutlet weak var resetButton: UIButton!
    
    
    /* Trash button, removes cell. */
    @IBOutlet weak var trashButton: UIButton!
    
    /* Reset Action makes streak count equal to zero. */
    @IBAction func resetButtonAction(_ sender: Any) {
        count = 0;
    }
    
    
    /* Adding another day of habit achievement */
    @IBAction func streakAction(_ sender: Any) {
        
        count = count + 1;
        points = points + 5;
        
        let myPoints = String(points);
        let myCount = String(count);

        streakCountLabel.text = myCount;
        habitPointsLabel.text = myPoints;
        
       
        if(count >= 0 && count < 3) {
            streakCountLabel.textColor = UIColor(red: 0.40, green: 0.36, blue: 0.12, alpha: 1.00)
           
        }
        
        else if (count >= 3 && count < 7) {
            streakButton.setImage(UIImage(named: "Silver.png"), for: .normal)
            streakCountLabel.textColor = UIColor(red: 0.51, green: 0.54, blue: 0.59, alpha: 1.00)
        }
        
        else if (count >= 7 && count < 31) {
            streakButton.setImage(UIImage(named: "Gold.png"), for: .normal)
            streakCountLabel.textColor = UIColor(red: 1.00, green: 0.93, blue: 0.55, alpha: 1.00)
        }
        
        else if (count >= 31 && count < 60) {
            streakButton.setImage(UIImage(named: "Diamond.png"), for: .normal)
            streakCountLabel.textColor = UIColor(red: 0.73, green: 0.95, blue: 1.00, alpha: 1.00)
        }
        
        else {
            streakButton.setImage(UIImage(named: "Fire.png"), for: .normal)
            streakCountLabel.textColor = UIColor(red: 1.00, green: 0.49, blue: 0.00, alpha: 1.00)
        }
        
        
    }
    
    override func awakeFromNib() {
        
        
        super.awakeFromNib()
        // Initialization code
        
        
        
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
