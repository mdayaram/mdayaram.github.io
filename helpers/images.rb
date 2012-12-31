module Images
  @@counts = {
    :profile => 5,
    :project => 5,
    :blog => 5,
    :random => 5
  }

  def get_profile_imgs
    get_imgs(:profile)
  end

  def get_project_imgs
    get_imgs(:project)
  end

  def get_blog_imgs
    get_imgs(:blog)
  end

  def get_random_imgs
    get_imgs(:random)
  end

  private

  def get_imgs(type)
   list = []
   @@counts[type].times do |n|
      list << "/images/#{type}/#{n}.jpg"
   end
   list
  end
end
