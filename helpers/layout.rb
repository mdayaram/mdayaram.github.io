module Layout

  def style_exists?(name)
    return false if name.nil? or name.empty?
    path = File.join(settings.views, "styles", "#{name}.scss")
    File.exists?(path)
  end

  def script_exists?(name)
    return false if name.nil? or name.empty?
    path = File.join(settings.public_folder, "scripts", "#{name}.js")
    File.exists?(path)
  end

end
