# iproute2-cookbook

 Allows to install iproute2 as a service...

## Supported Platforms

 Ubuntu/Debian

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['iproute2']['package']</tt></td>
    <td>Boolean</td>
    <td>iproute2 package name</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### iproute2::default

Include `iproute2` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[iproute2::default]"
  ]
}
```

## License and Authors

Author:: PE, pf. (<philippe.eychart@mail.pf>)
