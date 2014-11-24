require 'yaml'

module Contacts
  @@contacts = YAML.load_file("#{settings.root}/private/contacts.yml")

  def get_contacts
    @@contacts
  end
end
