//
//  CrayonViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Kareem James on 10/6/16.
//  Copyright © 2016 Kareem James. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {

    @IBOutlet weak var colorWord: UILabel!
    
    var detailCrayonData: Crayon?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let color = detailCrayonData {
        
        colorWord.text = color.name
            if color.name == "Black" {
                colorWord.textColor = UIColor.white
            }
            
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(color.red), green: CGFloat(color.green), blue: CGFloat(color.blue), alpha: 1)
        }
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
