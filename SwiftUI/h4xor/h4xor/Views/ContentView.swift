//
//  ContentView.swift
//  h4xor
//
//  Created by Nhat Bui Minh on 04/06/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var netWorkManager = NetWorkManager()
    var body: some View {
        NavigationView {
            List(netWorkManager.posts) {
                post in
                NavigationLink(destination: DetailsView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear{
            self.netWorkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
