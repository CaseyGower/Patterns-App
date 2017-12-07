//
//  InfoTableViewController.swift
//  Patterns App
//
//  Created by Casey Gower on 12/4/17.
//  Copyright © 2017 Casey Gower. All rights reserved.
//

import UIKit

class InfoTableViewController: UITableViewController
{
    @IBOutlet weak var patternTopViewImage: UIImageView!
    //Static Cells
    @IBOutlet weak var lengthCell: UITableViewCell!
    @IBOutlet weak var volumeCell: UITableViewCell!
    @IBOutlet weak var ratioCell: UITableViewCell!
    @IBOutlet weak var nameCell: UITableViewCell!
    
    
    var notesData: [Note]?
    var patternData: [Pattern]?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        patternData = DataSet.sampleData
        notesData = DataSetNotes.sampleData
        
        patternTopViewImage.image = patternData![1].patternImageTop
        lengthCell.textLabel?.text = patternData![1].length
        volumeCell.textLabel?.text = patternData![1].volume
        nameCell.textLabel?.text = patternData![1].name
        ratioCell.textLabel?.text = patternData![1].ratio
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (notesData?.count)!
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotesCells", for: indexPath)
        

        // Configure the cell...
        if let noteCell = cell as? NotesTableViewControllerCell {
            if let therealdata = notesData {
                let note = therealdata[indexPath.row]
                
                
                
                if let date = note.date {
                    let formatter = DateFormatter()
                    formatter.dateFormat = "dd-MMM-yyyy"
                    let noteDateAsString = formatter.string(from: date)
                    noteCell.notesCellDetail.text = noteDateAsString
                }
                
                noteCell.notesCellTitle?.text = note.title
                
            }
            }
        return cell
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
