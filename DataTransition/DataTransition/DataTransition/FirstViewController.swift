//
//  ViewController.swift
//  DataTransition
//
//  Created by Hakan Pekşen on 16.06.2022.
//
import UIKit
struct Person {
    var name: String
    var surname: String
    var age: Int
}
class FirstViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtSurname: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var tablePeople: UITableView!
    var selectedInfo: Person?
    //Initial Data
    var models: [Person] = [
        Person(name: "Ali", surname: "Yıldırım",age: 30),
        Person(name: "Elif", surname: "Çetin",age: 22),
        Person(name: "Betül", surname: "Yılmaz",age: 15),
        Person(name: "Emre", surname: "Demir",age: 27),
        Person(name: "Hasan", surname: "Yavuz",age: 38),
        Person(name: "Kaan", surname: "Bulut",age: 43),
        Person(name: "Pınar", surname: "Duru",age: 19)
       ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    @IBAction func btnAdd(_ sender: Any) {
        //Adding new Person
        models.append(Person(name:txtName.text!,surname:txtSurname.text!,age: Int(txtAge.text!) ?? 15))
        tablePeople.reloadData()
    }
    func setUI() {
            // MARK: title
            title = "People"
            // MARK: tvFruits
        tablePeople.delegate = self
        tablePeople.dataSource = self
        }
        //Seting and sending selected data info
        func goDetail(person: Person) {
            selectedInfo = person
            performSegue(withIdentifier: "secondView", sender: nil)
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "secondView" {
               let detailVC = segue.destination as! SecondViewController
               detailVC.person = selectedInfo
           }
       }
}
extension FirstViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        goDetail(person: models[indexPath.row])
    }
    
}
extension FirstViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = models[indexPath.row].name
            return cell
        }
}
