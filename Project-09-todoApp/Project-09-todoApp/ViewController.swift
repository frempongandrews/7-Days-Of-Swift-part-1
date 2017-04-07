//
//  ViewController.swift
//  Project-09-todoApp
//
//  Created by Andrews Frempong on 07/04/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    var todos = [String]()
    var todoItem = ""
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var todoInput: UITextField!
    @IBAction func onAddTodo(_ sender: UIButton) {
        
        if (todoInput.text! != "") {
            
            if let tempTodo = todoInput.text {
                
                todoItem = tempTodo
            }
            
            todos.append(todoItem)
            
            todoInput.text = ""
            
            UserDefaults.standard.set(todos, forKey: "myTodos")
            
            table.reloadData()
            
        } else {
            //present an alert saying 'add item'
            
            let alert = UIAlertController(title: "No Item Added", message: "Please Add Item", preferredStyle: .alert)
            
            let action = UIAlertAction(title: "Okay", style: .default, handler: nil)
            
            alert.addAction(action)
            
            present(alert, animated: true, completion: nil)
        }
        
       
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        
        cell.textLabel?.text = todos[(indexPath.row)]
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            
            todos.remove(at: indexPath.row)
            
            table.reloadData()
            
            UserDefaults.standard.set(todos, forKey: "myTodos")
            
        }
    }

    
    //keyboard dissapear
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }

    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let todosObject = UserDefaults.standard.object(forKey: "myTodos") as? [String] {
            
            todos = todosObject
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

