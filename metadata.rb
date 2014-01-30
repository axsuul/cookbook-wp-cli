maintainer       "James Hu"
maintainer_email "hello@james.hu"
license          "Apache 2.0"
description      "Provides recipes for installing wp-cli."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.1"

recipe "default", "Installs wp-cli"

%w{ubuntu debian}.each do |os|
  supports os
end
