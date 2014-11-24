require 'yaml'

module Currently
  @@random = YAML.load_file("#{settings.root}/private/currently.yml")
  @@sleeping = "sleeping, or at least trying to"

  @@random << @@sleeping

  def currently_doing?
    time = Time.now.utc + Time.zone_offset("PST")
    if 3 <= time.hour and time.hour < 8
      return @@sleeping
    end
    return @@random.sample
  end
end
