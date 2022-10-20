//
//  ListController.swift
//  Hello
//
//  Created by yi on 2022/10/20.
//

import UIKit

class ListController: UIViewController {
    var dataArray:[String] = []
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        for index in 0...99{
            dataArray.append("我是爱学:\(index)")
        }
        
        tableView.delegate = self
        tableView.dataSource=self
        tableView.reloadData()
    }
    

}


extension ListController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell
    }
    

    
}
