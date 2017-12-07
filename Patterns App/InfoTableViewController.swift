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
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lengthLabel: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var ratioLabel: UILabel!
    
    var notesData: [Note]?
    var pattern: Pattern?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //pattern = DataSet.sampleData
        notesData = DataSetNotes.sampleData
        if let pattern = pattern{
            patternTopViewImage.image = pattern.patternImageTop
            lengthLabel.text = pattern.length
            volumeLabel.text = pattern.volume
            nameLabel.text = pattern.name
            ratioLabel.text = pattern.ratio
        }
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "note", for: indexPath)
        
        if let therealdata = notesData {
            let note = therealdata[indexPath.row]
            
            if let noteCell = cell as? NotesTableViewControllerCell {
                
                if let date = note.date {
                    let formatter = DateFormatter()
                    formatter.dateFormat = "dd-MMM-yyyy"
                    let noteDateAsString = formatter.string(from: date)
                    noteCell.notesCellDetail?.text = noteDateAsString
                    //noteCell.notesCellDetail.text = noteDateAsString
                }
                
                noteCell.notesCellTitle?.text = note.title
                
                //patterncell.patternLengthLable?.text = pattern.length
                //patterncell.patternImageThubnail.image = pattern.patternImageTop
                
            }
        }
        return cell
        //
        //        // Configure the cell...
        //        //if let noteCell = cell {
        //        let noteCell = NotesTableViewControllerCell
        //            if let therealdata = notesData {
        //                let note = therealdata[indexPath.row]
        //
        //
        //
        //                if let date = note.date {
        //                    let formatter = DateFormatter()
        //                    formatter.dateFormat = "dd-MMM-yyyy"
        //                    let noteDateAsString = formatter.string(from: date)
        //                    noteCell.detailTextLabel?.text = noteDateAsString
        //                    //noteCell.notesCellDetail.text = noteDateAsString
        //                }
        //
        //                noteCell.textLabel?.text = note.title
        //
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "showNote" {
                if let svc = segue.destination as? NoteViewController,
                    let cell = sender as? UITableViewCell,
                    let note = notesData {
                    if let indexPath = tableView.indexPath(for: cell) {
                        svc.note = note[indexPath.row]
                    }
                }
            }
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}

