//
//  ContentView.swift
//  GameLeaders
//
//  Created by Corbin Shanks on 9/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            
            Text("Game Leaders")
                .font(.headline)
                .fontWeight(.bold)
            Divider()
            
            // FIRST
            VStack (alignment: .leading, spacing: 10) {
                HStack {
                    Spacer()
                    Text("Passing Yards")
                        .font(.subheadline)
                        .bold()
                    Spacer()
                }
            }
                
            HStack {
                VStack {
                    Image("H Hooker")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.secondary, lineWidth: 1))

                    Text("TENN")
                        .fontWeight(.bold)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("H. Hooker")
                        .fontWeight(.bold)
                    Text("15-19,")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    Text("225 YDS, 3 TD")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                
                Divider()
                    .frame(height: 60)
                    .padding(.horizontal, 5)

                
                VStack(alignment: .leading) {
                    Text("C. Bazelak")
                        .fontWeight(.bold)
                    Text("27-44,")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    Text("322 YDS, 2 INT")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    
                }
                Spacer()
                VStack {
                    Image("C Bazelak")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.secondary, lineWidth: 1))
                    Text("MIZ")
                        .fontWeight(.bold)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            
            Divider()
            
            // SECOND
            VStack (alignment: .leading, spacing: 10) {
                HStack {
                    Spacer()
                    Text("Rushing Yards")
                        .font(.subheadline)
                        .bold()
                    Spacer()
                }
            }
                
            HStack {
                VStack {
                    Image("T Evans")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.secondary, lineWidth: 1))

                    Text("TENN")
                        .fontWeight(.bold)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("T. Evans")
                        .fontWeight(.bold)
                    Text("15 CAR,")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    Text("156 YDS, 3 TD")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                
                Divider()
                    .frame(height: 60)
                    .padding(.horizontal, 5)

                
                VStack(alignment: .leading) {
                    Text("T. Badie")
                        .fontWeight(.bold)
                    Text("21 CAR,")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    Text("41 YDS, 1 TD")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                Spacer()
                VStack {
                    Image("T Badie")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.secondary, lineWidth: 1))
                    Text("MIZ")
                        .fontWeight(.bold)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            
            Divider()
            
            // THIRD
            VStack (alignment: .leading, spacing: 10) {
                HStack {
                    Spacer()
                    Text("Recieving Yards")
                        .font(.subheadline)
                        .bold()
                    Spacer()
                }
            }
                
            HStack {
                VStack {
                    Image("V Jones Jr")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.secondary, lineWidth: 1))

                    Text("TENN")
                        .fontWeight(.bold)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("V. Jones. Jr.")
                        .fontWeight(.bold)
                    Text("7 REC,")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    Text("79 YDS, 1 TD")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                
                Divider()
                    .frame(height: 60)
                    .padding(.horizontal, 5)

                
                VStack(alignment: .leading) {
                    Text("K. Chism")
                        .fontWeight(.bold)
                    Text("4 REC, 76 YDS")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    Text(" ")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                Spacer()
                VStack {
                    Image("K Chism")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.secondary, lineWidth: 1))
                    Text("MIZ")
                        .fontWeight(.bold)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            
            Divider()

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
