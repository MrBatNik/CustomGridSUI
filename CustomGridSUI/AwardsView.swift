//
//  AwardsView.swift
//  CustomGridSUI
//
//  Created by Nikita Batrakov on 06.02.2022.
//

import SwiftUI

struct AwardsView: View {
    let awards = Award.getAwards()
    var activeAwards: [Award] {
        awards.filter { $0.awarded == true }
    }
    
    var body: some View {
        NavigationView {
            CustomGridView(items: activeAwards, columns: 2) { award, itemSize in
                VStack {
                    award.awardView
                    Text(award.title)
                }
                .padding()
                .frame(width: itemSize, height: itemSize)
            }
            .navigationTitle("Your awards: \(activeAwards.count)")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
