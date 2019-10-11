//
//  ContentView.swift
//  H4X0R News
//
//  Created by user on 10/10/2019.
//  Copyright © 2019 Oladipupo Oluwatobi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var  networkManager = NetWorkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4X0R NEWS")
        }
            
        .onAppear {
            self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


