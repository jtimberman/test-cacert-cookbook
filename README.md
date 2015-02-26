# test-cacert cookbook

This cookbook tests whether the affected base boxes currently installed have the distro CA certificate bundle.

## Platforms

- CentOS 5.11, 6.6

## Usage

Use test kitchen to use this cookbook for testing purposes. There are two suites, `distro-cacert` and `updated-cacert`.

### default

This suite tests whether the ca-bundle.crt present on the system is updated. If the test passes, no further action is required, your box has the correct bundle file.

If the test fails, you need to update the affected box. For example:

```
vagrant box remove opscode-centos-5.11
```

Then rerun kitchen, and it will automatically down the updated box.

### updated-cacert

This is mostly a test to verify, in fact, that the cacert.pem bundle from the curl project is still missing the certificates for VeriSign that AWS S3 uses. A passing test means that the bundle has not been fixed for [this reported issue](http://curl.haxx.se/mail/archive-2014-10/0062.html).

### older-cacert

This recipe uses an older cacerts bundle that we cached as part of our omnibus builds that still has the VeriSign certificates.

# License and Author

- Author: Joshua Timberman <joshua@chef.io>
- Copyright (c) 2015, Chef Software, Inc. <legal@chef.io>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
