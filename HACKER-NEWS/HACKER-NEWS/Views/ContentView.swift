//
//  ContentView.swift
//  HACKER-NEWS
//
//  Created by Cryton Sibanda on 2020/05/26.
//  Copyright © 2020 Cryton Sibanda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManger()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("HACKER NEWS")
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
//            Post(id: "1", title: "Hello"),
//            Post(id: "2", title: "Hey"),
//            Post(id: "3", title: "Bye")]
