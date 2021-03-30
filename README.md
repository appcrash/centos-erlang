# centos-erlang
Github actions for releasing erlang application in CentOS

As most erlang docker images are based on debian/ubuntu, this repo's goal is to provide erlang/rebar3 environment to faciliate releasing erlang application targeting redhat/centos. Just set the rebar3 package argument and the packaged tarball would be ready in the github workdir.


# usage
***rebar3_arg*** is required, add this to your github action.

```yaml
runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2

    - name: Package
      uses: appcrash/centos-erlang@main
      with:
        rebar3_arg: as prod tar
```
