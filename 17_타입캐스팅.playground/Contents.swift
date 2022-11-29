/*
 타입 캐스팅
 : 인스턴스의 타입을 확인하거나 어떠한 클래스의 인스턴스를 해당 클래스 계층 구조의 슈퍼 클래스나 서브 클래스로 취급하는 방법
 
 타입 캐스팅 연산자
 is, as
 : 값의 타입을 확인하거나 다른 타입을 변환하는데 사용한다.
 */

import Foundation


class MediaItem {
    var name : String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var dirctor: String
    init(name: String, director: String) {
        self.dirctor = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "기생충", director: "봉준호"),
    Song(name: "Butter", artist: "BTS"),
    Movie(name: "올드보이", director: "박찬욱"),
    Song(name: "Wonderwall", artist: "Oasis"),
    Song(name: "Rain", artist: "이적")
]


var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")

for item in library {
    // library는 MediaItem 타입이기 때문에 Movie로 다운 캐스팅이 가능하면 Movie를 꺼낸다
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir. \(movie.dirctor)")
    // Song으로 다운 캐스팅이 가능하면 Song을 꺼낸다.
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}
