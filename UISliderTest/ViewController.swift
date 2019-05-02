//
//  ViewController.swift
//  UISliderTest
//
//  Created by D7703_11 on 2019. 5. 2..
//  Copyright © 2019년 D7703_11. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
        myLabel.text = String(mySlider.value)
        
    }

    @IBAction func slideMoved(_ sender: Any) {
        myLabel.text = String(Int(mySlider.value))
        myTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for:indexPath)
        let timeTableValue = Int(mySlider.value)
        
        cell.textLabel?.text = String(timeTableValue + indexPath.row)
        
        return cell
    }
    
    
}
