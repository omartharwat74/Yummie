//
//  ListDishesViewController.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/27/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import UIKit
import ProgressHUD

class ListDishesViewController: UIViewController {
    
    var category : DishCategory!
    
    // MARK : OUTLETS
    @IBOutlet weak var tableView: UITableView!
    
    
    var dishes : [Dish] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = category.title
        registerCells()
        ProgressHUD.show()
        NetworkService.shared.fetchCategoryDishes(categoryId: category.id) {[weak self] (result) in
            switch result{
            case .success(let dishes) :
                ProgressHUD.dismiss()
                self?.dishes = dishes
                self?.tableView.reloadData()
            case .failure(let error) :
                ProgressHUD.showError(error.localizedDescription)
            }
        }

      
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName:DishListTableViewCell.identifier , bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }


}
extension ListDishesViewController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier, for: indexPath) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
}
