//
//  DispatchgroupView.swift
//  DataManageVcApp
//
//  Created by Priyanshi on 04/06/24.
//

import SwiftUI

struct DispatchgroupView: View {
    @StateObject private var viewModel = DispatchNetworkClass()

    var body: some View {
        
        NavigationView{
            VStack {
                
                if viewModel.allDataFetched {
                    if !viewModel.dataModel1.isEmpty && !viewModel.dataModel2.isEmpty {
                        NavigationLink(destination:SencondScreen(bindingView: $viewModel.dataModel2)){
                            List {
                                Section(header: Text("Data Model 1").foregroundColor(.blue)) {
                                    ForEach(viewModel.dataModel1) { dataModel1 in
                                        Text(dataModel1.title ?? "Title not Found")
                                        
                                    }
                                }
                            }
                      
                        }
                    } else {
                        Text("Failed to load data.")
                    }
                } else {
                    Text("Loading data...")
                }
            }
            .navigationTitle("Data Model 1")
            .onAppear {
                viewModel.fetchAllData()
            }
            
        }
        
    }
}


struct SencondScreen: View {
    
    @Binding var bindingView: [UserModel]
    
    var body: some View{
        
        NavigationView{
            VStack {
                List{
                    Section(header: Text("Data Model 2").foregroundColor(.blue)) {
                        ForEach(bindingView) { dataModel2 in
                            Text(dataModel2.body ?? "Body not Found")
                        }
                    }
                }
            }
            .navigationTitle("Data Model 2")
        }
    }
}
struct DispatchgroupView_Previews: PreviewProvider {
    static var previews: some View {
        DispatchgroupView()
    }
}
