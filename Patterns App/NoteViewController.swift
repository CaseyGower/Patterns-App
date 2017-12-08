//
//  NoteViewController.swift
//  Patterns App
//
//  Created by Casey Gower on 12/5/17.
//  Copyright © 2017 Casey Gower. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {

    @IBOutlet weak var noteTitle: UITextField!
    @IBOutlet weak var noteText: UITextView!
    
    var note: Note?
    var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let note = note{
            noteText.text = note.text
            noteTitle.text = note.title
    }
        scrollView = UIScrollView(frame: view.bounds)
        
        
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
