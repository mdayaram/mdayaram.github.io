require 'yaml'

module Friends
  @@friends = YAML.load_file("#{settings.root}/private/friends.yml")

  def get_friends
    @@friends
  end

end
