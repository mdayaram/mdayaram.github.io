require 'yaml'

module Contacts
  @@contacts = YAML.load_file("#{settings.root}/private/contacts.yml")

  def get_contacts
    puts "\n\n\n\n\nSETTINGS ROOT: #{settings.root}\n\n\n\n\n\n"
    @@contacts
  end
end
