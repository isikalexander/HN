//
//  ContentView.swift
//  HackerNews
//
//  Created by Steffan Harmaajarvi on 12.06.2021.
//

import SwiftUI

struct ContentView: View {
        
    @ObservedObject var manager = NetworkManager()
    
    var body: some View {
        
                
        NavigationView {
            
            List(manager.news, id: \.id) { n in
                NavigationLink(
                    destination: DetailView(url: n.url),
                    label: {
                        HStack {
                            Text(n.title)
                            Spacer()
                            Text("\(n.points)")
                        }
                    })
                
            }
            .navigationBarTitle("Hackedfdfr News")
        }
        
        .onAppear(perform: {
            manager.fetchData()
        })
        
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
