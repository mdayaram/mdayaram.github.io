require 'yaml'

module Currently
  @@random = YAML.load_file("#{settings.root}/private/currently.yml")
  @@sleeping = "sleeping, at least trying to"
  @@working = "writing software for <a href='https://www.moovweb.com' target='_blank'>moovweb</a>."

  def currently_doing?
    time = Time.now.utc + Time.zone_offset("PST")
    if 1 <= time.hour and time.hour <= 8
      return @@sleeping
    elsif 1 <= time.wday and time.wday <= 5 and 10 <= time.hour and time.hour <= 19
      return @@working
    else
      return @@random.sample
    end
    @@contacts
  end
end
