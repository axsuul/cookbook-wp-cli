name             "wp-cli"
maintainer       "James Hu"
maintainer_email "hello@james.hu"
license          "Apache 2.0"
description      "Provides recipes for installing wp-cli."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.3"

recipe "default", "Installs wp-cli"

supports "ubuntu"
supports "debian"