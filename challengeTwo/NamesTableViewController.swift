//
//  NamesTableViewController.swift
//  challengeTwo
//
//  Created by Lijie Zhao on 8/3/17.
//  Copyright © 2017 Lijie Zhao. All rights reserved.
//

import UIKit

class NamesTableViewController: UITableViewController {
    
    var properNames = Names()

    override func viewDidLoad() {
        super.viewDidLoad()

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
        return (properNames?.namesArray.count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "properCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = properNames?.namesArray[indexPath.row]

        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAdd" {
            let addController = segue.destination as! AddTableViewController
            addController.addHandler = {(name:String) in
                self.properNames?.add(name: name)
                self.tableView.reloadData()
            }
        }
    }

}
