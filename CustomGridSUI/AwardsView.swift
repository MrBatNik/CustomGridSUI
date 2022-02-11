//
//  AwardsView.swift
//  CustomGridSUI
//
//  Created by Nikita Batrakov on 06.02.2022.
//

import SwiftUI

struct AwardsView: View {
    let awards = Award.getAwards()
    let columns = [
        GridItem(.adaptive(minimum: 160, maximum: 200))
    ]
    var activeAwards: [Award] {
        awards.filter { $0.awarded == true }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(activeAwards, id: \.title) { award in
                        VStack {
                            award.awardView
                            Text(award.title)
                        }
                    }
                }
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
