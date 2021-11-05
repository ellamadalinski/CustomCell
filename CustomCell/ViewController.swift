//
//  ViewController.swift
//  CustomCell
//
//  Created by ELLA MADALINSKI on 11/5/21.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
        
    var students : [Student] = []
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        students.append(Student(first: "Ella", last: "Madalinski", favColor: "Blue", id: "240864", lunch: 6, favAnimal: "Elephant"))
        students.append(Student(first: "Joe", last: "Mama", favColor: "Red", id: "777777", lunch: 7, favAnimal: "Unicorn"))
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyCustomCell
        cell.firstNameLabelOutlet.text = students[indexPath.row].first
        cell.lastNameLabelOutlet.text = students[indexPath.row].last
        return cell
    }


}

