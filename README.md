os-autoinst/openQA tests for openSUSE and SUSE Linux Enterprise [![Build Status](https://travis-ci.org/os-autoinst/os-autoinst-distri-opensuse.svg?branch=master)](https://travis-ci.org/os-autoinst/os-autoinst-distri-opensuse)
=================================================================================================================================================================================================================================

For more details see http://os-autoinst.github.io/openQA/


## How to contribute

Fork the repository and make some changes.
Once you're done with your changes send a pull request. You have to agree to
the license. Thanks!
If you have questions, visit us on irc.freenode.net in #opensuse-factory or
ask on our mailing list opensuse-factory@opensuse.org


### Coding style

The project follows the rules of the parent project
[os-autoinst](https://github.com/os-autoinst/os-autoinst#how-to-contribute).
and additionally the following rules:

* Take
  [example boot.pm](https://github.com/os-autoinst/os-autoinst-distri-example/blob/master/tests/boot.pm)
  as a template for new files
* The test code should use simple perl statements, not overly hacky
  approaches, to encourage contributions by newcomers and test writers which
  are not programmers or perl experts
* Update the copyright information with the current year and *SUSE LLC* as the
  legal entity. For new files make sure to only state the year during which
  the code was written.
* Use `my ($self) = @_;` for parameter parsing in methods when accessing the
  `$self` object. Do not parse any parameter if you do not need any.
* [DRY](https://en.wikipedia.org/wiki/Don't_repeat_yourself)
* Every pull request is tested by the travis CI by calling the equivalent of
  `make test` on the tests. It is recommended to call `tools/tidy` locally to
  fix the style of your changes before providing a pull request. Call `make
  test` to conduct all tests.


Also see the
[DoD/DoR](https://progress.opensuse.org/projects/openqatests/wiki/Wiki#Definition-of-DONEREADY)
as a helpful (but not mandatory) guideline for new contributions.


## License

Most files are minimal copyleft, but some more complex tests are GPL. So please
check the license within the files.
