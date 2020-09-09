//
//  ContentView.swift
//  Hacker Dalam Berita
//
//  Created by Ismail . on 19/08/20.
//  Copyright © 2020 Ismail . All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
        .navigationBarTitle("Hacker Dalam Berita")
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

//let posts = [
//Post(id: "1", title: "halo"),
//Post(id: "2", title: "bonjour"),
//Post(id: "3", title: "hola")
//
//]
