//
//  ViewController.swift
//  FamilyTree
//
//  Created by Vincent Cubit on 9/15/21.
//


import UIKit


class AuntsAndUnclesViewController: UIViewController {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    var people = [ Person ]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.addPeople()
        
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        
        
    }
    
    
    func addPeople() {
        
        self.people.append( Person(name: "Bonnie", imageName: "anon.png") )
        self.people.append( Person(name: "Rose", imageName: "rose.png") )
        self.people.append( Person(name: "Dave", imageName: "anon.png") )
        self.people.append( Person(name: "Kenny", imageName: "anon.png") )
        
    }


}


extension AuntsAndUnclesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.people.count
    }
    
    
}


extension AuntsAndUnclesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = self.people[indexPath.row].name
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "Clicked") as? ClickedNameViewController
        
        vc?.image = self.people[indexPath.row].imageName
        vc?.label = self.people[indexPath.row].name
        
        navigationController?.pushViewController(vc!, animated: true)
        
        
    }
    
    
}
