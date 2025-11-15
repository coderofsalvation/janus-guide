# Addressibility

---

<center>
    <img src="_media/xrfragments.svg" style="max-width:200px"/>
</center>

JanusWeb's spatial deeplinking is very unique.<br>
It lets standard URLs link to more than a virtual room.<br>
They can link to a guaranteed, specific spawnpoint.<br> 
Users arrive at the exact designated 3D location.<br>
Specific virtual areas become instantly sharable and accessible.<br>
This drastically improves navigation and collaboration. <br>

> JanusWeb supports spatial deeplinking via URI [XR Fragments](https://xrfragment.org).

XR URI Fragments (`foo.glb#room1` or `bar.html#room2` e.g.) allow for sharing urls,<br>
which point to a specific spawnpoint/object.

# Deeplinks

since v1.5.56 deeplinks (`foo.glb#room1` or `bar.html#room2` e.g.) are also supported for objects inside 3D assets.

### Example: deep load 3D files

```
https://my.org/#room5
```

> this will load `my.org/index.html` and <b>and spawn the user at object 'room5'</b>

### Example: deep load a 3D file

```
https://xrfragments.org/index.glb#world3
```

> this will load `xrfragments.org/index.glb` and load `index.glb` as a portal/scene <b>and spawn the user at object 'world3'</b>
