//
//  CrayonTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Kareem James on 10/6/16.
//  Copyright © 2016 Kareem James. All rights reserved.
//

import UIKit

class CrayonTableViewController: UITableViewController {

    var crayons: [Crayon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                crayons.append(crayon)
            }
        }
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.crayons.count 
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)

        // Configure the cell...
        
        let crayonAtIndexPath: Crayon = self.crayons[indexPath.row]
                
            cell.textLabel?.text = crayonAtIndexPath.name
        
            cell.backgroundColor = UIColor(red: CGFloat(crayonAtIndexPath.red), green: CGFloat(crayonAtIndexPath.green), blue: CGFloat(crayonAtIndexPath.blue), alpha: 1)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedColor = self.crayons[indexPath.row]
        performSegue(withIdentifier: "colorChange", sender: selectedColor)
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let selectedColor = self.crayonData?[indexPath.row]
//        
//    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "colorChange" {
            if let destination = segue.destination as? CrayonViewController {
                destination.detailCrayonData = sender as? Crayon
            }
        }
    
    }
    

}
