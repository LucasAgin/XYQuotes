//
//  TestControllerViewController.swift
//  XYQuotes
//
//  Created by Lucas Agin on 5/9/17.
//  Copyright © 2017 LucasAgin. All rights reserved.
//

import UIKit

class TestControllerViewController: UIViewController/*, UITableViewDelegate, UITableViewDataSource */{

     /*
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (postDict.count)
    }
   
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "quote")
        let keyCopy = Array(postDict.keys)
        print(postDict)
        print(keyCopy)
        let object = keyCopy[indexPath.row]
        print(object)
       // cell.textLabel?.text = postDict["Quote"] as! String
        return cell
    }
    
*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
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
class quotesTable: UITableView {
    
}
