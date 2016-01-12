# bootprint-integration-test 

[![Build Status](https://travis-ci.org/nknapp/bootprint-integration-test.svg)](https://travis-ci.org/nknapp/bootprint-integration-test)
[![Coverage Status](https://img.shields.io/coveralls/nknapp/bootprint-integration-test.svg)](https://coveralls.io/r/nknapp/bootprint-integration-test)

> Test for the commandline of bootprint and bootprint-swagger

This test-package is meant to run inside TravisCI. It installs `bootprint` 
and `bootprint-swagger` globally and then executes several command line 
calls on both and checks that at some result is generated.

It does not verify the correctnes. That should be done by the testcases 
in the bootprint-swagger package.




## License

`bootprint-integration-test` is published under the MIT-license. 
See [LICENSE.md](LICENSE.md) for details.

## Release-Notes
 
For release notes, see [CHANGELOG.md](CHANGELOG.md)
 
## Contributing guidelines

See [CONTRIBUTING.md](CONTRIBUTING.md).