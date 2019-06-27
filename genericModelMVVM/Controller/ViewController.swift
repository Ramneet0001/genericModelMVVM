//
//  ViewController.swift
//  genericModelMVVM
//
//  Created by STUser on 25/06/19.
//  Copyright © 2019 abc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fName, lName, address: UILabel!
    
    private let apiManager = ApiManager()
    
    private(set) var userViewModel: UserViewModel?
    
    var searchResult: UserDetailModel? { didSet {
            guard let searchResult = searchResult else {return}
            userViewModel = UserViewModel.init(userDetailModel: searchResult)
            DispatchQueue.main.sync {
                self.updateLabels()
            }}}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getUserDetail()
    }
    
    
    @IBAction func testButton(_ sender: UIButton) {
        
        print(userViewModel as Any)
    }
}

extension ViewController {
    
    private func updateLabels() {
        guard let userViewModel = userViewModel else { return }
        fName.text = userViewModel.firstName
        lName.text = userViewModel.lastName
        address.text = userViewModel.address
    }
    
    private func getUserDetail() {
        
        apiManager.callApiService(urlString: api_URL_Model!.baseUrl, method: "GET", headers: [:], params: [:], typeModel: UserDetailModel.self) { (modelResponse, error) in
            
            if let error = error {
                print("Get error: \(error.localizedDescription)")
                return
            }
            guard let response = modelResponse  else { return }
            self.searchResult = response
            print(response)
            
        }
    }
}
