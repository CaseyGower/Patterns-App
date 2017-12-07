//
//  TableViewController.swift
//  Patterns App
//
//  Created by Casey Gower on 12/4/17.
//  Copyright © 2017 Casey Gower. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    // MARK: Properties
    
    var patternData: [Pattern]?
    
    var filteredData = [Pattern]()
    
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        patternData = DataSet.sampleData
        
        setupSearchController()
    }
    
    
    func setupSearchController() {
        
        if #available(iOS 11.0, *) {
            navigationItem.searchController = searchController
        } else {
            // Fallback on earlier versions
        }
        searchController.searchBar.placeholder = "search staches"
        searchController.obscuresBackgroundDuringPresentation = false
        definesPresentationContext = true
        searchController.searchResultsUpdater = self as? UISearchResultsUpdating
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
        return (patternData?.count)!
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableCell", for: indexPath)
        
        if let therealdata = patternData {
            var pattern = therealdata[indexPath.row]
            
            if isFiltering() {
                pattern = filteredData[indexPath.row]
            }
            else {
                pattern = therealdata[indexPath.row]
            }
            
            if let patterncell = cell as? PatternTableViewCell {
                
                
                patterncell.patternTitleLable?.text = pattern.name
                patterncell.patternLengthLable?.text = pattern.length
                patterncell.patternImageThubnail.image = pattern.patternImageTop
                
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
        func filterContentForSearchText(_ searchText: String) {
            guard let data = patternData else {return }
            
            filteredData = data.filter({ (pattern) -> Bool in
                
                if let name = pattern.name {
                    return name.lowercased().contains(searchText.lowercased())
                }
                
                return false
            })
            
            tableView.reloadData()
        }
        
        func isFiltering() -> Bool {
            return searchController.isActive && !searchBarIsEmpty()
        }
        
        func searchBarIsEmpty() -> Bool {
            return searchController.searchBar.text?.isEmpty ?? true
        }
        
    }

