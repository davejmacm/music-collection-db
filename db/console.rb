require("pry")
require_relative("../models/albums")
require_relative("../models/artists")

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({'name' => 'David Bowie'})
artist1.save()

album1 = Album.new({
  'title' => 'Greatest Hits',
  'genre' => 'Rock',
  'artist_id' => artist1.id
  })
  album1.save()


  binding.pry
  nil
