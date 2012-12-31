module Images
  @@counts = {
    :profile => 5,
    :blog => 5
  }

  def get_profile_imgs
    get_imgs(:profile)
  end

  def get_blog_imgs
    get_imgs(:blog)
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
