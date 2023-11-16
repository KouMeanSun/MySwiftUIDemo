//
//  LandmarkRow.swift
//  MySwiftUI
//
//  Created by 高明阳 on 2023/11/15.
//

import SwiftUI

struct LandmarkRow:View{
    var landmark:Landmark
    
    var body:some View{
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}
