# hubrick-cookbook

This cookbook provisions and configures an Ubuntu instance running nginx that serves a plain html hello world file on port 80.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['hubrick']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### hubrick::default

Include `hubrick` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[hubrick::default]"
  ]
}
```

## License and Authors

Author:: Eyal Zekaria (eyal.ez@gmail.com)
