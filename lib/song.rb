require 'pry'

class Song
  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end

end # Song class
