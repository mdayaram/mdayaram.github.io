require 'yaml'

module Friends
  @@friends = YAML.load_file("#{settings.root}/private/friends.yml")

  def get_friends
    @@friends
  end

  def get_friend_imgs(friend)
    list = []
    @@friends[friend][1].times do |n|
      list << "/images/friends/#{unix_friendly(friend)}/#{n}.jpg"
    end
    list
  end

  private
  
  def unix_friendly(stuff)
    stuff.downcase.gsub(/[^\w\s_-]+/, '')
      .gsub(/(^|\b\s)\s+($|\s?\b)/, '\\1\\2')
      .gsub(/\s+/, '_')
  end
end
