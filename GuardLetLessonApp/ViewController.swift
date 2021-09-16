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
    
    var cellLeftLabelContentsArray = [String()]
    var cellRightLabelContentsArray = [String()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        upperSystemIndigoView.layer.cornerRadius = 120.0
        upperSystemIndigoView.layer.maskedCorners = [.layerMinXMaxYCorner]
        upperSystemIndigoView.layer.shadowOffset = CGSize(width: 3, height: 3)
        upperSystemIndigoView.layer.shadowRadius = 10.0
        upperSystemIndigoView.layer.shadowOpacity = 0.8
        
        underSystemIndigoView.layer.cornerRadius = 120.0
        underSystemIndigoView.layer.maskedCorners = [.layerMaxXMinYCorner]
        
        upperTextField.layer.borderColor = UIColor.systemIndigo.cgColor
        upperTextField.layer.borderWidth = 1.0
        upperTextField.borderStyle = .roundedRect
        
        underTextField.layer.borderColor = UIColor.systemIndigo.cgColor
        underTextField.layer.borderWidth = 1.0
        
        addButton.layer.cornerRadius = 10.0
        addButton.layer.shadowOffset = CGSize(width: 1, height: 1)
        addButton.layer.shadowRadius = 10.0
        addButton.layer.shadowOpacity = 0.4
        
        tableView.layer.shadowOffset = CGSize(width: 3, height: 3)
        tableView.layer.shadowRadius = 10.0
        tableView.layer.shadowOpacity = 0.8
        tableView.layer.masksToBounds = false
        
        
    }

    
    @IBAction func add(_ sender: UIButton) {
        
        
        
        
    }
    
    
    func putInText(upperText:String?,underText:String?){
        
        guard let resultUpperText = upperText else { self.showAlert(); return }
        guard let resultUnderText = underText else { self.showAlert(); return }
        
        cellLeftLabelContentsArray.append(resultUpperText)
        cellRightLabelContentsArray.append(resultUnderText)
        
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


