//
//  PatternInfoUIViewController.swift
//  Patterns App
//
//  Created by Casey Gower on 12/7/17.
//  Copyright © 2017 Casey Gower. All rights reserved.
//

import UIKit

class PatternInfoUIViewController: UIViewController {
    
    //MARK - Outlets
    
    @IBOutlet weak var notesTableView: UITableView!
    
    @IBOutlet weak var patternImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lengthLabel: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var ratioLabel: UILabel!
    
    var note: [Note]?
    var pattern: Pattern?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        note = DataSetNotes.sampleData
        
        if let pattern = pattern{
            lengthLabel.text = pattern.length
            volumeLabel.text = pattern.volume
            nameLabel.text = pattern.name
            ratioLabel.text = pattern.ratio
            patternImage.image = pattern.patternImageTop
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (note?.count)!
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "note", for: indexPath)
        
        if let therealdata = note {
            let note = therealdata[indexPath.row]
            
            if let noteCell = cell as? NotesTableViewControllerCell {
                
                if let date = note.date {
                    let formatter = DateFormatter()
                    formatter.dateFormat = "dd-MM-yyyy"
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
    }
    
    
    
    
    // MARK: - Navigation
    
    //    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        // Get the new view controller using segue.destinationViewController.
    //        // Pass the selected object to the new view controller.
    //        if let identifier = segue.identifier {
    //            if identifier == "noteText" {
    //                if let svc = segue.destination as? NoteViewController,
    //                    let cell = sender as? UITableViewCell,
    //                    let note = note {
    //                    if let indexPath = tableView.indexPathForSelectedRow() {
    //                        svc.note = note[indexPath.row]
    //                    }
    //                }
    //            }
    //
    //        }
    //    }
    
    
}
