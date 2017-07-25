//
//  TestControllerViewController.swift
//  XYQuotes
//
//  Created by Lucas Agin on 5/9/17.
//  Copyright © 2017 LucasAgin. All rights reserved.
//

import UIKit
import Firebase

class TestControllerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var quoteCount = 0
    var quotes = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
   
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Gettings quotes...\n")
        print(quotes)
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "quote")
        cell.textLabel?.text = quotes[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getQuotes()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }

    
    func getQuotes () {
        let quoteRef = FIRDatabase.database().reference(withPath: "Quotes")
        quoteRef.observe(.childAdded, with: { (snapshot) in
            self.quotes.append(snapshot.childSnapshot(forPath: "Quote").value as! String!)
            self.tableView.reloadData()
        })
        
    }
 

}
