# Wearables

How about an object which is anchored to the player?<br>
There are two ways to make such wearables:

* room-specific (use `player.head.add( yourobject )`)
* persists across rooms (wrist-audioplayer e.g.)

### persistence: webui apps

The janus webui apps xrmenu and [teleporter](https://github.com/jbaicoianu/janusweb/blob/b2d13290490c9282134fef27ac6e9f259a3b195e/media/assets/webui/apps/locomotion/teleporter.js) come to mind. <br>

> Teleporter doesn't have a visible-by-default component but it is a 3d object which follows you around to different rooms
most notably, it:

1. uses janus.registerElement() instead of room.registerElement() - https://github.com/jbaicoianu/janusweb/blob/b2d13290490c9282134fef27ac6e9f259a3b195e/media/assets/webui/apps/locomotion/teleporter.js#L1
1. listens for the janus object's [`room_change` event]( https://github.com/jbaicoianu/janusweb/blob/b2d13290490c9282134fef27ac6e9f259a3b195e/media/assets/webui/apps/locomotion/teleporter.js#L138
1. moves the object into the new room and adds mousedown / mouseup events to the room https://github.com/jbaicoianu/janusweb/blob/b2d13290490c9282134fef27ac6e9f259a3b195e/media/assets/webui/apps/locomotion/teleporter.js#L218-L223
1. it also has a control context which remains active across rooms https://github.com/jbaicoianu/janusweb/blob/b2d13290490c9282134fef27ac6e9f259a3b195e/media/assets/webui/apps/locomotion/teleporter.js#L111-L134
