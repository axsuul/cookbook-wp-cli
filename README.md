Description
===========

Installs [wp-cli](http://wp-cli.org/). That's it!

Requirements
============

Chef
----
Tested on Chef `0.11.x`.

Platform
--------

Tested on

* Ubuntu 12.04

but older and newer platforms should work just fine.

Installation
============
[Librarian](https://github.com/applicationsonline/librarian) is recommended to install this cookbook. In fact, it's recommended to install all your cookbooks! Within your `Cheffile`

```ruby
cookbook 'wp-cli', git: 'https://github.com/axsuul/cookbook-wp-cli'
```

Recipes
=======

default
-------

Installs wp-cli.

Contributing
============

I love pull requests!

License
=======

Author:: James Hu (<hello@james.hu>)

Copyright:: Copyright (c) 2014, James Hu

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
