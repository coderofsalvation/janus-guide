# Occluder Meshes

In AR we often want partial immersion, usually in 3 ways:

1. classic: by rendering objects onto our physical space
2. VR-in-AR: by projecting a VR scene via a window/door/screen e.g.222. 
3. workspace 'hoop' (Dan Meeks™): VR except a radius around the center is AR

> NOTE: especially 2 and 3 are very economic for e-learning and workplace scenarios, they allow reprojecting a VR experience in AR (while still enabling access to the physical space).

# Examples

The JML-markup below, achieves the following 3 **VR-in-AR** examples: a door-, window- and hoop-projection.

<a href="/janus-guide/_media/occluder_door.jpg">
  <img alt="gallery1" target="_blank" src="/janus-guide/_media/occluder_door.jpg" height="190" width="32%">
</a>
<a href="/janus-guide/_media/occluder_window.jpg">
  <img alt="gallery1" target="_blank" src="/janus-guide/_media/occluder_window.jpg" height="190" width="32%">
</a>
<a href="/janus-guide/_media/occluder_hoop.jpg">
  <img alt="gallery1" target="_blank" src="/janus-guide/_media/occluder_hoop.jpg" height="190" width="32%">
</a>

```xml
<fireboxroom>
  <room skybox="false">

    <object id="occluder.glb" layer="-1001" scale="3.5 3.5 3.5" color_write="false" pos="0 0.05 0" cull_face="back"/>

    <!-- below comes your scene -->
    <object id="https://xrfragment.org/index.glb"/>
  </room>
</fireboxroom>
```
> NOTE: Please point `occluder.glb` to one of these files: [cubedoor.glb](_media/asset/cubedoor.glb), [cubewindow.glb](_media/asset/cubewindow.glb) or [hoop.glb](_media/asset/hoop.glb)

Janusweb-builds with recent [XR Fragments](https://xrfragments.org)-support, allow a shorthand of `<object id='occluder.glb' class='occludable'>` (see [XR hints](https://xrfragment.org/#%F0%9F%93%9Clevel3%3A%20XR%20hints))
