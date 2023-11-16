//
//  LandmarkList.swift
//  MySwiftUI
//
//  Created by 高明阳 on 2023/11/15.
//

import SwiftUI

struct LandmarkList:View{
    var body: some View{
        NavigationView{
            List(ModelData.landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
        }.navigationTitle("Landmarks")
        
    }
}
