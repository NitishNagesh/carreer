//
//  ViewController.swift
//  carreer
//
//  Created by nitish nayak n on 23/10/18.
//  Copyright © 2018 nitish nayak n. All rights reserved.
//

import UIKit
import KJExpandableTableTree


struct  cellData {
    var opened = Bool()
    var title = String()
    var sectionData = [String]()
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    // KJ Tree instances -------------------------
    var arrayTree:[Parent] = []
    var kjtreeInstance: KJTree = KJTree()
    
    var tableViewData = [cellData]()
   
    @IBOutlet weak var tableview: UITableView!
    
    
    
  
    

 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kjtreeInstance = KJTree(indices:
            ["1.1",
             
             "2.1.1",
             "2.1.2.1",
             "2.1.3.2",
             "2.1.3.3",
             
             
             "3.1",
             "3.2",
             "3.3"]
        )
         //tableview.register(UINib(nibName: "tableViewCell", bundle: nil), forCellReuseIdentifier: TableViewCell)
         tableview.register(UINib(nibName: "tableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableViewData = [cellData(opened: false, title: "title1", sectionData: ["cell1","cell2","cell3"]),
        cellData(opened: false, title: "title2", sectionData: ["cell1","cell2","cell3"]),
        cellData(opened: false, title: "title3", sectionData: ["cell1","cell2","cell3"]),
        cellData(opened: false, title: "title4", sectionData: ["cell1","cell2","cell3"])]
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // Table functions
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableViewData[section].opened == true{
            return tableViewData[section].sectionData.count+1
        }
        else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {return UITableViewCell()}
            cell.textLabel?.text = tableViewData[indexPath.section].title
            return cell
        }else{
           
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") else {return UITableViewCell()}
                      
            return cell
            
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableViewData[indexPath.section].opened == true {
            tableViewData[indexPath.section].opened  = false
            let sections = IndexSet.init(integer:indexPath.section)
            tableView.reloadSections(sections, with: .none)
        }
        else {
            tableViewData[indexPath.section].opened  = true
            let sections = IndexSet.init(integer:indexPath.section)
            tableView.reloadSections(sections, with: .none)
            
        }
    }
    


}


