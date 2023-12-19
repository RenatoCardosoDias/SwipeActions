//
//  ContentView.swift
//  SwipeActions
//
//  Created by Renato on 19/12/23.
//

import SwiftUI

struct ContentView: View {

	@State private var nameList = ["Renato", "Sofia", "Maerilene", "Jorjao", "Erica"]

    var body: some View {
        VStack {
			List {
				ForEach(nameList, id: \.self) { name in
					Text(name)
						.padding()
						.swipeActions{
							Button(role: .destructive){
								//TODO: DELETE
							} label: {
								Label("Delete", systemImage: "trash.fill")
							}
						} //end .swipteAction Delete
						.swipeActions{
							Button{
								//TODO: EDIT
							} label: {
								Label("Edit", systemImage: "square.and.pencil")
							}
							.tint(.blue)
						} //end .swipeActions Edit
						.swipeActions (edge: .leading){
							Button{
								//TODO: MICROFONE
							} label: {
								Label("Mic", systemImage: "mic.fill")
							}
							.tint(.green)
						}
				}
			}
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
