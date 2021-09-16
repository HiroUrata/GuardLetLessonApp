//
//  ViewController.swift
//  GuardLetLessonApp
//
//  Created by UrataHiroki on 2021/09/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var upperSystemIndigoView: UIView!
    @IBOutlet weak var underSystemIndigoView: UIView!
    @IBOutlet weak var upperTextField: UITextField!
    @IBOutlet weak var underTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var cellLeftLabelContentsArray = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        upperSystemIndigoView.layer.cornerRadius = 120.0
        upperSystemIndigoView.layer.maskedCorners = [.layerMinXMaxYCorner]
        upperSystemIndigoView.layer.shadowOffset = CGSize(width: 3, height: 3)
        upperSystemIndigoView.layer.shadowRadius = 10.0
        upperSystemIndigoView.layer.shadowOpacity = 0.8
        
        underSystemIndigoView.layer.cornerRadius = 120.0
        underSystemIndigoView.layer.maskedCorners = [.layerMaxXMinYCorner]
        underSystemIndigoView.layer.shadowOffset = CGSize(width: 3, height: 3)
        underSystemIndigoView.layer.shadowRadius = 10.0
        underSystemIndigoView.layer.shadowOpacity = 0.8
        
        upperTextField.layer.borderColor = UIColor.systemIndigo.cgColor
        upperTextField.layer.borderWidth = 1.0
        upperTextField.borderStyle = .roundedRect
        
        underTextField.layer.borderColor = UIColor.systemIndigo.cgColor
        underTextField.layer.borderWidth = 1.0
        
        addButton.layer.cornerRadius = 10.0
        addButton.layer.shadowOffset = CGSize(width: 1, height: 1)
        addButton.layer.shadowRadius = 10.0
        addButton.layer.shadowOpacity = 0.4
        
        tableView.layer.borderColor = UIColor.systemIndigo.cgColor
        tableView.layer.borderWidth = 1.0
        
        tableView.dataSource = self
        
    }

    
    @IBAction func add(_ sender: UIButton) {
        
        putInText(upperText: Int(upperTextField.text!), underText: Int(underTextField.text!))
        
        
    }
    
    
    func putInText(upperText:Int?,underText:Int?){
        
        guard let resultUpperText = upperText else { self.showAlert(); return }
        guard let resultUnderText = underText else { self.showAlert(); return }
        
        cellLeftLabelContentsArray.append(String(resultUpperText + resultUnderText))
        
        
        upperTextField.text = ""
        underTextField.text = ""
        
        tableView.reloadData()
    }

    
    func showAlert(){
        
        let usualAlert = {() -> UIAlertController in
            
            let alert = UIAlertController(title: "nilを見つけたよ", message: "入力されているか確認してね", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "No", style: .destructive, handler: { _ in
                
                print("No")
            }))
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                
                print("Yes")
            }))
            
            return alert
        }()
        
        self.present(usualAlert, animated: true, completion: nil)
    }
    
}


extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellLeftLabelContentsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let cellLeftLabel = cell.contentView.viewWithTag(1) as! UILabel
        
        cellLeftLabel.text = cellLeftLabelContentsArray[indexPath.row]
        
        return cell
    }
    
    
}


