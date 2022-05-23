//
//  ContentView.swift
//  SpeedRunChallenge
//
//  Created by Maegan Wilson on 5/22/22.
//

import SwiftUI

struct ContentView: View {
    let image = "CameraImage"
    let topSfSymbols = ["bolt.circle", "chevron.up.circle.fill", "livephoto"]
    let zoomSizes = ["0,5", "1x", "3"]
    let cameraModes = ["Cinematic", "Video", "Photo", "Portrait", "Pano"]
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .edgesIgnoringSafeArea(.vertical)
            VStack {
                HStack {
                    Image(systemName: topSfSymbols[0])
                    Spacer()
                    Image(systemName: topSfSymbols[1])
                    Spacer()
                    Image(systemName: topSfSymbols[2])
                }.font(.system(size: 25))
                    .padding(.horizontal, 5)
                    .padding(.bottom, 30)
                .foregroundColor(.white)
                    .padding(0)
                    .background(.secondary)
                Spacer()
                VStack {
                    HStack {
                        ZStack {
                            Circle()
                                .foregroundColor(.primary.opacity(0.7))
                                .frame(width: 40)
                            Text(zoomSizes[0])
                        }
                        ZStack {
                            Circle()
                                .foregroundColor(.primary.opacity(0.7))
                                .frame(width: 60)
                            Text(zoomSizes[1])
                                .foregroundColor(.yellow)
                                .bold()
                        }
                        ZStack {
                            Circle()
                                .foregroundColor(.primary.opacity(0.7))
                                .frame(width: 40)
                            Text(zoomSizes[2])
                        }
                    }.foregroundColor(.white)
                        .frame(height: 60)
                    VStack {
                        HStack {
                            Spacer()
                        }
                        
                        HStack(spacing: 20) {
                            ForEach(cameraModes, id: \.self) { mode in
                                if mode == "Photo" {
                                    Text(mode.uppercased())
                                        .font(.caption)
                                        .bold()
                                        .foregroundColor(.yellow)
                                } else {
                                    Text(mode.uppercased())
                                        .font(.caption)
                                        .bold()
                                }
                            }
                        }
                        HStack {
                            Image(image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80, alignment: .center)
                                .clipped()
                                .cornerRadius(10.0)
                            Spacer()
                            ZStack {
                                Circle()
                                    .strokeBorder(.clear, lineWidth: 5)
                                    .background(Circle().fill(.white)
                                        .frame(width: 80))
                                    .frame(width: 80)
                                Circle()
                                    .strokeBorder(.white, lineWidth: 5)
                                    .background(Circle().fill(.clear)
                                        .frame(width: 100))
                                    .frame(width: 100)
                            }.frame(height: 130)
                            Spacer()
                            ZStack {
                                Circle()
                                    .fill(Color.secondary)
                                    .frame(width: 60)
                                Image(systemName: "arrow.triangle.2.circlepath")
                                    .font(.system(size: 30))
                            }.frame(height: 130)
                        }
                    }.foregroundColor(.white)
                        .padding()
                        .background(.secondary)
                }.ignoresSafeArea()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
