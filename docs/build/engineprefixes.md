## Example: janusportal via engine prefixes

1. In [blender](https://blender.org) open your glTF-files (`world1.glb` e.g.)
2. create/select an 'empty object'
3. click the 'custom properties' tab
4. add a custom property (type string)
5. create the following properties:

| custom property  | value |
|-|-|
| `-janus-tag` | `link` |
| `-janus-url` | `world2.glb` |

> TIP: use the [blender plugin](https://xrfragment.org/#%F0%9F%93%9Clevel7%3A%20engine%20prefixes) to do this easier/faster

More info: [janusweb engine prefixes](https://xrfragment.org/#%F0%9F%93%9Clevel7%3A%20engine%20prefixes)

## Example: texturescrolling via engine prefixes

1. In [blender](https://blender.org) open your glTF-files (`world1.glb` e.g.)
2. create/select an 'empty object'
3. click the 'custom properties' tab
4. add a custom property (type string)
5. create the following properties:

| custom property  | value |
|-|-|
| `-three-material.map.offset.x+` | `0.001` |
| `-three-material.map.offset.y+` | `0.001` |

This will scroll the texture in both directions every frame periodically.

> TIP: use the [blender plugin](https://xrfragment.org/#%F0%9F%93%9Clevel7%3A%20engine%20prefixes) to do this easier/faster

More info: [janusweb engine prefixes](https://xrfragment.org/#%F0%9F%93%9Clevel7%3A%20engine%20prefixes)

