# Description

Chef cookbook to upload public ssh keys from a data\_bag to given users' authorized\_keys files.

## Platforms

Tested on:

* Ubuntu 13.04

## Recipes

* `default.rb` - Uploads keys

## Attributes

* `node['sshkeys']['users']` - a list of remote usernames for whom we should create authorized\_keys files.

## Data Bags

If your set `node['sshkeys']['users']` to `["foo", "bar"]`, then you should have these two databag files:

* `data_bags/sshkeys/foo.json`
* `data_bags/sshkeys/bar.json`

The contents of `foo.json` should look like this:

    {
      "id": "foo",
      "public_keys": ["adfsafsdfdsaafddfsafds", "qwerqwerqererqerwrewq"]
    }

`bar.json` should be similar.

License and Author
==================

Author:: Paul A. Jungwirth (<pj@illuminatedcomputing.com>)

Copyright:: 2013, Illuminated Computing Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
