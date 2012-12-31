module Contacts
  @@contacts = {
    "Facebook" => ["https://www.facebook.com/mdayaram", "/images/contacts/facebook.png"],
    "Twitter" => ["https://www.twitter.com/yedgyz", "/images/contacts/twitter.png"],
    "Google Plus" => ["https://plus.google.com/107234017478509748854", "/images/contacts/gplus.png"],
    "Pinterest" => ["https://pinterest.com/mdayaram", "/images/contacts/pinterest.png"]
  }
  def get_contacts
    @@contacts
  end
end
