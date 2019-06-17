class MP3Importer
  #parse directory of files and send filenames to a song class
  #to create a directory of music
  #needs two methods: files and import
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
def files
 Dir.entries(path).select {|entry| entry.include?(".mp3")}
 end
 
 def import
   
   files.each {|filename| Song.new_by_filename(filename)}
 end


 
  
end