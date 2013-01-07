module Styles

  def style_exists?(name)
    return false if name.nil? or name.empty?
    path = File.join(settings.views, "styles", "#{name}.scss")
    File.exists?(path)
  end
end
