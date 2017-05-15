//
//  ViewController.swift
//  XYQuotes
//
//  Created by Lucas Agin on 3/24/17.
//  Copyright © 2017 LucasAgin. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
  

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var quoteField: UITextField!
    @IBOutlet weak var senderField: UITextField!
    @IBOutlet weak var responseLabel: UILabel!
 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendQuote(_ sender: Any) {
        addQuote(quote: quoteField.text ?? "Invalid Quote", sender: senderField.text ?? "Invalid Sender")
        responseLabel.text = "Succesfully added quote \"" + quoteField.text! + "\" by " + senderField.text! + "."
        responseLabel.textColor = UIColor.green
        quoteField.text = ""
        senderField.text = ""
    }

   
    func addQuote(quote: String, sender : String) {
        let quoteRef = FIRDatabase.database().reference(withPath: "Quotes")
        let quoteLine : NSDictionary = ["Quote": quote, "addedby": sender]
        quoteRef.childByAutoId().setValue(quoteLine)
    }

    
}

