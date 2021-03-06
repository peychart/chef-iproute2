# iproute2-cookbook

 Chef cookbook which allows to install iproute2 as a service...

## Vagrant plugins

To use the Vagrantfile, you need to install some plugins :

```
vagrant plugin install vagrant-berkshelf
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-cachier
```

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
    <td>String</td>
    <td>iproute2 package name</td>
    <td><tt>iproute2</tt></td>
  </tr>
  <tr>
    <td><tt>['iproute2']['start']</tt></td>
    <td>StringArea</td>
    <td>Successive portions of the ip command of the start service</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['iproute2']['stop']</tt></td>
    <td>StringArea</td>
    <td>Successive portions of the ip command of the stop service</td>
    <td><tt>nil</tt></td>
  </tr>
</table>

## Usage

 eg (Allows to make an adsl aggregator...)

- default['iproute2']['stop'] = [ "ip route add default dev eth0" ]
- default['iproute2']['start'] = [ "ip route add default scope global" ]
- default['iproute2']['start'].push( "nexthop via 192.198.7.3 weight 1" )
- default['iproute2']['start'].push( "nexthop via 192.198.7.4 weight 1" )
- default['iproute2']['start'].push( "nexthop via 192.198.7.5 weight 1" )
- default['iproute2']['start'].push( "nexthop via 192.198.7.6 weight 1" )
- default['iproute2']['start'].push( "nexthop via 192.198.7.7 weight 1" )
- default['iproute2']['start'].push( "nexthop via 192.198.7.8 weight 1" )
- default['iproute2']['start'].push( "nexthop via 192.198.7.9 weight 1" )
- default['iproute2']['start'].push( "nexthop via 192.198.7.10 weight 1" )


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

Author:: PE, pf. (<peychart@mail.pf>)
