class DataFile < ActiveRecord::Base
  def self.save(file)
    name = file.original_filename
    #create the file path
    path = File.join(directory, name)
    #write the file
    File.open(path, "wb") { |f| f.write(file.read) }
  end
end