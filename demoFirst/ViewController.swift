//
//  ViewController.swift
//  demoFirst
//
//  Created by Albiorix Technology on 18/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var buttonOne: UILabel!
    
    @IBOutlet weak var animalTebleView: UITableView!
    
    var animals = ["Dog", "Cat", "Lion", "Monkey", "Human", "Gold Fish"]
    var isTrue = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animalTebleView.delegate = self
        animalTebleView.dataSource = self
//        animalTebleView.allowsSelection = false
//        animalTebleView.separatorStyle = .none
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected row \(animals[indexPath.row])")
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("Unselected row \(animals[indexPath.row])")
    }
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        print("HighlightRowAt row \(animals[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = animalTebleView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        cell.textLabel?.text = animals[indexPath.row]
        return cell
    }
}
