class Artist
   attr_accessor :name, :songs
   
   @@all = []  
  
  def initialize(name) #artist name
    @name = name
    @songs = [] #each instance of Artist class will have a collection of its own songs
end

  def add_song(song)
  @songs << song   #add song to songs array
  song.artist = self
  #keeps track of an artist's song
  song
  end
  
  #def songs
  #  @songs #reader
  #end
  
  def save
    @@all << self 
    #individual artist instance that was initialized
    #adds any artist instance to our collection of artists
    end
    
    def self.create(name)
     new_name = Artist.new(name)
     new_name.save
      new_name
    end
  
  def self.all
    @@all #reads the artist instances
  end
  
 def self.find_or_create_by_name(name)
   self.all.detect {|artist| artist.name == name} || self.create(name)
end
 
 def print_songs
   self.songs.each {|song| puts song.name} #prints out song name
 end
end
