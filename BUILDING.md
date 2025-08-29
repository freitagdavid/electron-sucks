Pretty simple.

You must have pandoc installed then you should be able to run `./build.sh` and it should output the README.md

Using a bit of a custom system here. The way it works is there is a small lua script in the `./scripts` folder that contains a table of variables and what to replace them with. They are formatted as `{{some_variable}}`. If you need a new one add it to the along with it's substitution. It can be a bit finicky so check the output.

When adding a new application to the list you much include it's open source status ie `{{open_source}}`/`{{closed_source}}` etc. More may be added over time. As well as the supported systems.

You should also prioritize always using the variables when possible.