require 'yaml'

module Currently
  @@random = YAML.load_file("#{settings.root}/private/currently.yml")
  @@sleeping = "sleeping, or at least trying to"
  @@working = "writing software for <a href='http://www.youtube.com/user/moovweb' target='_blank'>moovweb</a>"

  @@random << @@sleeping
  @@random << @@working

  def currently_doing?
    time = Time.now.utc + Time.zone_offset("PST")
    if 3 <= time.hour and time.hour <= 8
      return @@sleeping
    elsif 1 <= time.wday and time.wday <= 5 and 10 <= time.hour and time.hour <= 20
      return @@working
    end
    return @@random.sample
  end
end
