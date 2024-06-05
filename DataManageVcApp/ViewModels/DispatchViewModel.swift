//
//  DispatchViewModel.swift
//  DataManageVcApp
//
//  Created by Priyanshi on 04/06/24.
//

import Foundation


import SwiftUI

class DispatchNetworkClass: ObservableObject {
    
    @Published var dataModel1: [UserModel] = []
    @Published var dataModel2: [UserModel] = []
    @Published var allDataFetched = false
    
    func fetchAllData() {
        let dispatchGroup = DispatchGroup()
        
        let url1 = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        let url2 = URL(string: "https://jsonplaceholder.typicode.com/posts")!
       
        dispatchGroup.enter()
        NetworkManager.shared.fetchData(from: url1) { (result: Result<[UserModel], Error>) in
            DispatchQueue.main.async {

                switch result {
                case .success(let data):
                    self.dataModel1 = data
                    print("Your >>>>>>> DataModel1 is fetched successfully...........", self.dataModel1)
                case .failure(let error):
                    print("Error fetching data1: \(error)")
                }
                dispatchGroup.leave()
            }
        }
        
        dispatchGroup.enter()
        NetworkManager.shared.fetchData(from: url2) { (result: Result<[UserModel], Error>) in
            DispatchQueue.main.async {
                switch result {
                    
                case .success(let data):
                    self.dataModel2 = data
                case .failure(let error):
                    print("Error fetching data2: \(error)")
                }
                dispatchGroup.leave()
            }
        }
        
        dispatchGroup.notify(queue: .main) {
            self.allDataFetched = true
        }
    }
}
