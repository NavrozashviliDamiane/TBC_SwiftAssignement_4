// enum-ის განსაზღვრა შესაბამისი პარამეტრებით
enum Genre: String {
    case rock
    case pop
    case hipHop
    case electronic
    case classical
}

// Struc-ის განსაზღვრა
struct Song {
    var title: String 
    var artist: String 
    var duration: Double 
    var genre: Genre
    var description: String { 
        return "\(title) by \(artist) - \(genre.rawValue)"
    }

    // Lazy property რომელიც ქმნის გამომცემელს (publisher)
    lazy var publisher: String? = {
        if genre == .rock {
            return "RockStar Records"
        } else {
            return nil
        }
    }()
}


//ფუნქცია რომელიც ფილტრავს სიმღერებს და შესაბამისი ჟანრის მიხედვით
func filterSongsByGenre(playlist: [Song], genre: Genre) -> [Song] {
    return playlist.filter { $0.genre == genre }
}

// შესაბამისი ფლეილისტის შექმნა
var playlist: [Song] = [
    Song(title: "Song1", artist: "Artist1", duration: 3.5, genre: .rock),
    Song(title: "Song2", artist: "Artist2", duration: 4.2, genre: .pop),
    Song(title: "Song3", artist: "Artist3", duration: 2.8, genre: .rock),
    Song(title: "Song4", artist: "Artist4", duration: 3.7, genre: .electronic),
    Song(title: "Song5", artist: "Artist5", duration: 5.1, genre: .hipHop)
]

// ტესტ დრაივი
let selectedGenre = Genre.rock
let filteredSongs = filterSongsByGenre(playlist: playlist, genre: selectedGenre)

print("Songs in the \(selectedGenre.rawValue) genre:")
for song in filteredSongs {
    print("\(song.description) - Publisher: \(song.publisher ?? "Unknown")")
}
