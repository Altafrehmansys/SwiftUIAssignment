//
//  TableViewRow.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 09/01/2024.
//

import SwiftUI

struct TableViewRow: View {
    var content: Content
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image(content.image ?? "")
                .frame(width: 50, height: 50)
                .background(.appColorGrayLight)
                .cornerRadius(8)
                .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
            VStack (alignment: .leading) {
                HStack {
                    Text(content.title)
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.black)
                    Spacer()
                    Text(content.timeAgo ?? "")
                        .foregroundColor(.appColorGrayDark)
                }
                Text(content.desription)
                    .font(.system(size: 14))
            }
        }
    }
}

#Preview {
    TableViewRow(content: Content.init(title: "Header", desription: "decsription", timeAgo: "8m ago", image: ""))
}
