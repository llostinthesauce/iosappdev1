import SwiftUI

struct SportsEventView: View {
    var iconName: String
    var sportTitle: String
    var game: String
    var gameDate: String
    var image1: String
    var image2: String

    var body: some View {
        VStack (alignment: .leading, spacing: 12) {
            Spacer()
            Text("Sports Event")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
            
            HStack {
                Image(systemName: iconName)
                    .resizable()
                    .frame(width: 48, height: 48)
                    .padding(.leading, 20)
                Text(sportTitle)
                    .font(.headline)
                }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Matchup: ").italic() + Text(game)
                Text("When: ").italic() + Text(gameDate)
            }
            .font(.subheadline)
            .padding(.leading, 20)
            
            Image(image1)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
            Image(image2)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, alignment: .center)
        }
        .padding(.top)
    }
}

//open contentview to see preview
