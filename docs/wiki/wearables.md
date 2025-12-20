# Wearables

How about an object which is anchored to the player?<br>
There are two ways to make such wearables:

* room-specific (use `player.head.add( yourobject )`)
* persists across rooms (wrist-audioplayer e.g.)

### persistence: webui apps

The janus webui apps xrmenu and [teleporter](https://github.com/jbaicoianu/janusweb/blob/b2d13290490c9282134fef27ac6e9f259a3b195e/media/assets/webui/apps/locomotion/teleporter.js) come to mind. <br>

> Teleporter doesn't have a visible-by-default component but it is a 3d object which follows you around to different rooms
most notably, it:

1. uses [janus.registerElement()](https://github.com/jbaicoianu/janusweb/blob/b2d13290490c9282134fef27ac6e9f259a3b195e/media/assets/webui/apps/locomotion/teleporter.js#L1) instead of room.registerElement() 
1. listens for the janus object's `room_change` event [like here](https://github.com/jbaicoianu/janusweb/blob/b2d13290490c9282134fef27ac6e9f259a3b195e/media/assets/webui/apps/locomotion/teleporter.js#L138)
1. moves the object into the new room and adds mousedown / mouseup events [to each new room](https://github.com/jbaicoianu/janusweb/blob/b2d13290490c9282134fef27ac6e9f259a3b195e/media/assets/webui/apps/locomotion/teleporter.js#L218-L223)
1. it also has a control context which remains [active across rooms](https://github.com/jbaicoianu/janusweb/blob/b2d13290490c9282134fef27ac6e9f259a3b195e/media/assets/webui/apps/locomotion/teleporter.js#L111-L134)

```
(room||janus).registerElement('avatar-watch', {
    create() {
        this.watchface = this.createObject('text', { font_scale: false, col: 'green' });
        this.updateTime();
    },
    update() {
        if (Date.now() >= this.lastupdate + 1000) {
            this.updateTime();
        }
    },
    updateTime() {
        let now = new Date();
        this.watchface.text = `${now.getHours()}:${now.getMinutes().toString().padStart(2, '0')}:${now.getSeconds().toString().padStart(2, '0')}`;
        this.lastupdate = now.getTime();
    }
});
let watch = player.createObject('avatar-watch', { scale: V(10), rotation: V(45, -90, 0)});
player.attachObject('leftHand', watch);
```

> NOTE: when the watch is instanced via the `room`-object, the watch sticks with the player across rooms, but only receives updates when in the originating room.
