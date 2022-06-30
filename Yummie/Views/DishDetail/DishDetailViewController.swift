//
//  DishDetailViewController.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/27/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import UIKit
import ProgressHUD

class DishDetailViewController: UIViewController {
    
    // MARK : OULETS 
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var dishTitleLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var dish : Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()

       
    }
    
    private func populateView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        dishTitleLabel.text = dish.name
        caloriesLabel.text = dish.formattedCalories
        descriptionLabel.text = dish.description
        
    }
    
    // MARK : ACTION
    @IBAction func placeOrderButtonClicked(_ sender: Any) {
        guard let name = nameField.text?.trimmingCharacters(in: .whitespaces),
            !name.isEmpty else {
                ProgressHUD.showError("Please enter your name")
                return
        }
        ProgressHUD.show("Placing Order...")
        NetworkService.shared.placeOrder(dishId: dish.id ?? "", name: name) { [weak self] (result) in
            switch result {
            case .success(_):
                ProgressHUD.showSuccess("Your Order has been received.👩‍🍳")
            case .failure(let error) :
                ProgressHUD.showError(error.localizedDescription)
            }
        }
    }
    
    



}
