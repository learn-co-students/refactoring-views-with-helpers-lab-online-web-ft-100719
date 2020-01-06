module ArtistsHelper
    def display_artist(song)
        if song.artist && !song.artist.name.empty?
          link_to song.artist.name, artist_path(song.artist)
        else
          link_to "Add Artist to Song", edit_song_path(song)
        end
    end
end
