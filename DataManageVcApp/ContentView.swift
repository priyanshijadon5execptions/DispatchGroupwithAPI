//
//  ContentView.swift
//  DataManageVcApp
//
//  Created by Priyanshi on 04/06/24.
//

/*import SwiftUI

struct ContentView: View {
    
    @StateObject var dataModel = ContentViewModel()
    
    let grp = DispatchGroup()
    
     var body: some View {
         
         NavigationView {
             VStack{
                 List(dataModel.items) { item in
                  //   VStack {
                         HStack {
                             Button(action: {
                                 
                             }) {
                                 Image(systemName: "list.bullet.circle")
                                 
                             }
                             .padding(.leading, 8)
                             
                             VStack(alignment: .trailing) {
                                 Text(item.title ?? "")
                                     .font(.headline)
                             }
                             
                             Spacer()
                    //     }
                         .padding(.vertical, 10)
                         
                     }
                 }
                 .navigationTitle("Tittle")
                 .task {
                     await dataModel.fetchDataItem()
                 }
                 Spacer(minLength: 20)
             // MARK: -  show second API data
//                 List(dataModel.items){ myitem in
//                     HStack {
//                         Button(action: {
//
//                         }) {
//                             Image(systemName: "star.fill")
//
//                         }
//                         .padding(.leading, 8)
//
//                         HStack(alignment: .center) {
//                             Text(myitem.body ?? "")
//                                 .font(.headline)
//                                 //.background(Color.blue)
//                         }
//
//                         Spacer()
//
//                     .padding(.vertical, 10)
//
//                 }
//
//                 }
                     
                //MARK: -  add something new
                 ScrollView(.horizontal){
                     HStack {
                         ForEach(dataModel.items) { postData in
                             Text(postData.title ?? "")
                                 .padding()
                                 .foregroundColor(.cyan)
                         }
                     }
                 }
                     .navigationTitle("Select the Images")
                     .task {
                         await dataModel.fetchDataItem()
                     }
       
                 
             }
         }
        
         }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(dataModel: ContentViewModel())
    }
}
*/
