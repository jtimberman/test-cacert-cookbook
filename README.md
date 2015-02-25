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
