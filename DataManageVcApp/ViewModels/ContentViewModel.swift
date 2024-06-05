//
//  ContentViewModel.swift
//  DataManageVcApp
//
//  Created by Priyanshi on 04/06/24.
//

import Foundation
import Combine
import SwiftUI

@MainActor
class ContentViewModel : ObservableObject {


    @Published var items: [UserModel] = []
    @Published var secondItems: [Photos] = []
    

        func fetchFirstItem() async  {
            do {

                let url = URL(string: "https://api.slingacademy.com/v1/sample-data/photos")
                let (data, _) = try await URLSession.shared.data(from: url!)
                let decodedData = try JSONDecoder().decode([Photos].self, from: data)
                print(decodedData)

                await MainActor.run {
                                    self.secondItems = decodedData
                    print("Second APi Responce",self.secondItems)
                }
            } catch {
                print("Error fetching data: \(error)")
            }
        }

    //MARK: - SECOND  API               https://jsonplaceholder.typicode.com/posts
    
    func fetchDataItem() async  {
        do {

            let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
            let (data, _) = try await URLSession.shared.data(from: url!)
            let decodedData = try JSONDecoder().decode([UserModel].self, from: data)
            print(decodedData)

            await MainActor.run {
                                self.items = decodedData
                                print(self.items)
            }
        } catch {
            print("Error fetching data: \(error)")
        }
    }

    
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    

