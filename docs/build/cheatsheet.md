# Cheatsheet

> Jump to section:

[&lt;room&gt;](build/cheatsheet.md#ltroomgt) &nbsp;&nbsp;&nbsp;[&lt;base&gt;](build/cheatsheet.md#ltbasegt) &nbsp;&nbsp;&nbsp;[&lt;object&gt;](build/cheatsheet.md#ltobjectgt) &nbsp;&nbsp;&nbsp;[&lt;text&gt;](build/cheatsheet.md#lttextgt) &nbsp;&nbsp;&nbsp;[&lt;image&gt;](build/cheatsheet.md#ltimagegt) &nbsp;&nbsp;&nbsp;[&lt;link&gt;](build/cheatsheet.md#ltlinkgt) &nbsp;&nbsp;&nbsp;[&lt;paragraph&gt;](build/cheatsheet.md#ltparagraphgt) &nbsp;&nbsp;&nbsp;[&lt;video&gt;](build/cheatsheet.md#ltvideogt) &nbsp;&nbsp;&nbsp;[&lt;sound&gt;](build/cheatsheet.md#ltsoundgt) &nbsp;&nbsp;&nbsp;[&lt;light&gt;](build/cheatsheet.md#ltlightgt) &nbsp;&nbsp;&nbsp;[&lt;websurface&gt;](build/cheatsheet.md#ltwebsurfacegt) &nbsp;&nbsp;&nbsp;

> **NOTE:** generated from [janusweb](https://github.com/jbaicoianu/janusweb) (via [cheatsheet.awk](https://github.com/coderofsalvation/janus-guide/blob/master/docs/build/cheatsheet.awk)), so some attributes might be [janusweb](https://github.com/jbaicoianu/janusweb)-specific and not work in all JML-browsers


### &lt;room&gt;

|attribute | type |
|----------|------|
| `janus`| type: `object` |
| `url`| type: `string`, default: false |
| `urlfragment`| type: `string`, default: false |
| `referrer`| type: `string` |
| `deferload`| type: `boolean`, default: false |
| `roomid`| type: `string` |
| `corsproxy`| type: `string`, default: false |
| `baseurl`| type: `string`, default: false |
| `source`| type: `string` |
| `skybox`| type: `boolean`, default: true, set: this.toggleSkybox |
| `skybox_intensity`| type: `float`, set: this.setSkybox, default: 1.0 |
| `skybox_equi`| type: `string`, set: this.setSkybox |
| `skybox_left_id`| type: `string`, set: this.setSkybox |
| `skybox_right_id`| type: `string`, set: this.setSkybox |
| `skybox_up_id`| type: `string`, set: this.setSkybox |
| `skybox_down_id`| type: `string`, set: this.setSkybox |
| `skybox_front_id`| type: `string`, set: this.setSkybox |
| `skybox_back_id`| type: `string`, set: this.setSkybox |
| `cubemap_irradiance_id`| type: `string` |
| `cubemap_radiance_id`| type: `string` |
| `fog`| type: `boolean`, default: false, set: this.setFog |
| `fog_mode`| type: `string`, default: `exp`, set: this.setFog |
| `fog_density`| type: `float`, default: 1.0, set: this.setFog |
| `fog_start`| type: `float`, default: 0.0, set: this.setFog |
| `fog_end`| type: `float`, default: 100.0, set: this.setFog |
| `fog_col`| type: `color`, default: 0x000000, set: this.setFog |
| `ambient`| type: `color`, default: 0x666666, set: this.updateLights |
| `near_dist`| type: `float`, default: 0.01, set: this.setNearFar |
| `far_dist`| type: `float`, default: 1000.0, set: this.setNearFar |
| `pbr`| type: `boolean`, default: true |
| `toon`| type: `boolean`, default: false |
| `bloom`| type: `float`, default: 0.05, set: this.updateBloom |
| `tonemapping_type`| type: `string`, default: `linear`, set: this.updateToneMapping |
| `tonemapping_exposure`| type: `float`, default: 0.8, set: this.updateToneMapping |
| `defaultlights`| type: `bool`, default: true, set: this.updateLights |
| `shadows`| type: `bool`, default: false, set: this.updateShadows |
| `party_mode`| type: `bool`, default: true |
| `walk_speed`| type: `float`, default: 1.8, set: this.updatePlayerSpeed |
| `run_speed`| type: `float`, default: 5.4, set: this.updatePlayerSpeed |
| `jump_velocity`| type: `float`, default: 5.0 |
| `flying`| type: `boolean`, default: true, set: this.updateFlying |
| `gravity`| type: `float`, default: 0, set: this.updateGravity |
| `teleport`| type: `bool`, default: true, set: this.updateTeleport |
| `locked`| type: `bool`, default: false |
| `cursor_visible`| type: `bool`, default: true |
| `cursor_opacity`| type: `float`, default: .8 |
| `use_local_asset`| type: `string`, set: this.updateLocalAsset |
| `col`| type: `color`, set: this.updateLocalAsset |
| `private`| type: `bool`, default: false |
| `server`| type: `string` |
| `port`| type: `int` |
| `rate`| type: `int`, default: 200 |
| `voip`| type: `string`, default: `janus` |
| `voipid`| type: `string` |
| `voiprange`| type: `float`, default: 1 |
| `voipserver`| type: `string`, default: `voip.janusxr.org` |
| `classList`| type: `object`, default: [] |
| `className`| type: `string`, default: "", set: this.setClassName |
| `gazetime`| type: `float`, default: 1000 |
| `selfavatar`| type: `boolean`, default: false |
| `requires`| type: `string` |
| `onload`| type: `string` |
| `sync`| type: `boolean`, default: false |
| `pointerlock`| type: `boolean`, default: true, set: this.updatePointerLock |
| `players`| type: `object`, get: this.getRoomPlayers |
| `defaultview`| type: `string` |
| `showavatar`| type: `bool`, default: true, set: this.updateAvatarVisibility |
| `spawnradius`| type: `float`, default: 0 |


### &lt;base&gt;


`<base>` does not exist, but all elements inside `<room>` inherit from it (and its attributes).

> **NOTE**: `<base>` does not exist, not all of these are part of (all) JML (browsers). Use with care!

|attribute | type |
|----------|------|
| `room`| type: `object` |
| `janus`| type: `object` |
| `parent`| type: `object` |
| `js_id`| type: `string` |
| `color`| type: `color`, default: this.defaultcolor, `Object color` |
| `opacity`| type: `float`, default: 1.0, `Object translucency, from 0..1` |
| `transparent`| type: `bool`, default: null, `Override object transparency autodetection` |
| `alphatest`| type: `float`, default: 0.05, set: this.updateAlphaTest, min: 0, max: 1 |
| `fwd`| type: `vector3`, default: new Vector3(0,0,1), `Forward vector (zdir == fwd)` |
| `xdir`| type: `vector3`, default: new Vector3(1,0,0), `Left vector` |
| `ydir`| type: `vector3`, default: new Vector3(0,1,0), `Up vector` |
| `zdir`| type: `vector3`, default: new Vector3(0,0,1), `Forward vector (zdir == fwd)` |
| `rotation`| type: `euler`, default: new EulerDegrees(0,0,0), `Object Euler rotation, in degrees` |
| `rotation_order`| type: `string`, default: `XYZ`, set: this.pushFrameUpdate |
| `lighting`| type: `boolean`, default: true, comment: `Object reacts to scene lighting` |
| `sync`| type: `boolean`, default: false, comment: `Sync object changes over network` |
| `autosync`| type: `boolean`, default: false, comment: `Automatically sync object changes over network every frame` |
| `locked`| type: `boolean`, default: false, comment: `Prevent users from editing this object and its descendents` |
| `rotate_axis`| type: `string`, default: `0 1 0`, `Axis to rotate object on (see rotate_deg_per_sec)` |
| `rotate_deg_per_sec`| type: `float`, default: 0, `Speed to rotate at (see rotate_axis)` |
| `object`| type: `object` |
| `layers`| type: `string`, set: this.setLayers |
| `renderorder`| type: `integer`, default: 0 |
| `onclick`| type: `object` |
| `anim_id`| type: `string`, set: this.updateAnimation |
| `anim_transition_time`| type: `float`, default: .2 |
| `collision_id`| type: `string`, set: this.updateCollider |
| `collision_pos`| type: `vector3`, default: new Vector3(0,0,0), set: this.updateCollider |
| `collision_scale`| type: `vector3`, set: this.updateCollider |
| `collision_static`| type: `boolean`, default: true, set: this.updateCollider |
| `collision_trigger`| type: `boolean`, default: false, set: this.updateCollider |
| `collision_radius`| type: `float`, set: this.updateCollider |
| `classList`| type: `object`, default: [] |
| `className`| type: `string`, default: "", set: this.setClassName |
| `tag`| type: `string`, default: "" |
| `billboard`| type: `string`, default: "" |
| `hasposition`| type: `boolean`, default: true |
| `gazetime`| type: `float` |
| `static`| type: `boolean`, default: false |
| `isinternal`| type: `boolean`, default: false |
| `ongazeenter`| type: `callback` |
| `ongazeleave`| type: `callback` |
| `ongazeprogress`| type: `callback` |
| `ongazeactivate`| type: `callback` |
| `oncollision`| type: `callback` |
| `onmouseover`| type: `callback` |
| `onmouseout`| type: `callback` |
| `onmousemove`| type: `callback` |


### &lt;object&gt;

|attribute | type |
|----------|------|
| `janusid`| type: `string`, refreshGeometry: true |
| `image_id`| type: `string`, `Diffuse texture ID` |
| `anim_id`| type: `string`, `Current animation ID` |
| `lmap_id`| type: `string`, `Lightmap texture ID` |
| `video_id`| type: `string`, `Video texture ID` |
| `shader_id`| type: `string`, `Shader ID` |
| `shader_chunk_replace`| type: `object`, set: this.updateMaterial |
| `url`| type: `string`, set: this.updateWebsurfaceURL |
| `loop`| type: `boolean` |
| `websurface_id`| type: `string`, `WebSurface ID` |
| `shadow`| type: `boolean`, default: true, set: this.updateMaterial |
| `shadow_receive`| type: `boolean`, default: true, `Receive shadows from self and other objects` |
| `shadow_cast`| type: `boolean`, default: true, `Cast shadows onto self and other objects` |
| `shadow_side`| type: `string`, default: "", `Cast shadows onto front, back, both, or auto (empty)` |
| `wireframe`| type: `boolean`, default: false, `Wireframe rendering` |
| `fog`| type: `boolean`, default: true, `Object is affected by fog` |
| `lights`| type: `boolean`, default: false, comment: `Load lights from model` |
| `lighting`| type: `boolean`, default: true, `Object reacts to scene lighting` |
| `cull_face`| type: `string`, default: `back`, `Hide face sides (back, front, or none)` |
| `blend_src`| type: `string`, `Blend mode (source)` |
| `blend_dest`| type: `string`, `Blend mode (destination)` |
| `blend_mode`| type: `string`, default: null, `Blend mode` |
| `depth_write`| type: `boolean`, default: null, set: this.updateMaterial |
| `depth_test`| type: `boolean`, default: null, set: this.updateMaterial |
| `depth_offset`| type: `float`, default: null, set: this.updateMaterial |
| `depth_func`| type: `string`, default: null, set: this.updateMaterial |
| `color_write`| type: `boolean`, default: null, set: this.updateMaterial |
| `envmap_id`| type: `string`, `Environment map texture ID (overrides skybox reflections)` |
| `normalmap_id`| type: `string`, `Normal map texture ID` |
| `normal_scale`| type: `integer`, `Normal scale` |
| `bumpmap_id`| type: `string`, `Bumpmap texture ID` |
| `bumpmap_scale`| type: `float`, default: 1.0, `Bumpmap scale` |
| `alphamap_id`| type: `string`, `Alpha map texture ID` |
| `displacementmap_id`| type: `string`, `Displacement map texture ID` |
| `displacementmap_scale`| type: `float`, default: 1, `Displacement map height scale` |
| `texture_offset`| type: `vector2`, default: [0, 0], set: this.updateTextureOffsets |
| `texture_repeat`| type: `vector2`, default: [1, 1], set: this.updateTextureOffsets |
| `texture_rotation`| type: `float`, default: 0, set: this.updateMaterial |
| `emissive_id`| type: `string`, `Emissive map texture ID` |
| `roughness_id`| type: `string`, `Roughness map texture ID` |
| `metalness_id`| type: `string`, `Metalness map texture ID` |
| `emissive`| type: `color`, default: null, `Material emissive color` |
| `emissive_intensity`| type: `float`, default: 1, `Intensity of material emissive color` |
| `roughness`| type: `float`, default: null, min: 0, max: 1, `Material roughness value` |
| `metalness`| type: `float`, default: null, `Material metalness value` |
| `transmission`| type: `float`, default: 0, `Material transmission value` |
| `usevertexcolors`| type: `boolean`, default: true, set: this.updateMaterial |
| `gain`| type: `float`, default: 1.0, set: this.updateAudioNodes |
| `onloadstart`| type: `callback` |
| `onloadprogress`| type: `callback` |
| `onload`| type: `callback` |
| `onbeforerender`| type: `callback`, set: this.setupOnBeforeRenderListener |


### &lt;text&gt;

|attribute | type |
|----------|------|
| `text`| type: `string`, default: "", refreshGeometry: true |
| `font`| type: `string`, default: `helvetiker`, refreshGeometry: true |
| `font_size`| type: `float`, default: 1.0, refreshGeometry: true |
| `font_scale`| type: `bool`, default: true, refreshGeometry: true |
| `align`| type: `string`, default: `center`, refreshGeometry: true |
| `verticalalign`| type: `string`, default: `bottom`, refreshGeometry: true |
| `zalign`| type: `string`, default: `back`, refreshGeometry: true |
| `emissive`| type: `color`, default: 0x000000 |
| `opacity`| type: `float`, default: 1.0 |
| `depth_write`| type: `bool`, default: true |
| `depth_test`| type: `bool`, default: true |
| `thickness`| type: `float`, refreshGeometry: true |
| `segments`| type: `int`, default: 6, refreshGeometry: true |
| `bevel`| type: `bool`, default: false, refreshGeometry: true |
| `bevel_thickness`| type: `float`, default: 0, refreshGeometry: true |
| `bevel_size`| type: `float`, default: 0, refreshGeometry: true |
| `bevel_segments`| type: `int`, default: 3, refreshGeometry: true |
| `bevel_offset`| type: `float`, default: 0, refreshGeometry: true |
| `visible`| type: `boolean`, default: true, set: this.toggleVisibility |
| `roughness`| type: `float`, default: null, min: 0, max: 1, `Material roughness value` |
| `metalness`| type: `float`, default: null, `Material metalness value` |
| `envmap_id`| type: `string`, `Environment map texture ID (overrides skybox reflections)` |
| `wireframe`| type: `boolean`, default: false, `Wireframe rendering` |


### &lt;image&gt;

|attribute | type |
|----------|------|
| `image_id`| type: `string`, set: this.setMaterialDirty |
| `sbs3d`| type: `boolean`, default: false, set: this.setMaterialDirty |
| `ou3d`| type: `boolean`, default: false, set: this.setMaterialDirty |
| `reverse3d`| type: `boolean`, default: false, set: this.setMaterialDirty |
| `onloadstart`| type: `callback` |
| `onloadprogress`| type: `callback` |
| `onload`| type: `callback` |


### &lt;link&gt;

|attribute | type |
|----------|------|
| `url`| type: `string`, set: this.updateTitle |
| `title`| type: `string`, set: this.updateTitle |
| `janus`| type: `object` |
| `room`| type: `object` |
| `//`color`| type: `color`, default: new Color(0xffffff), set: this.updateMaterial |
| `size`| type: `vector3`, default: new Vector3(1.4,2.2,1), set: this.updateGeometry |
| `open`| type: `boolean`, default: false |
| `collision_id`| type: `string`, default: `cube`, set: this.updateCollider |
| `collision_scale`| type: `vector3`, set: this.updateCollider |
| `seamless`| type: `boolean`, default: false |
| `draw_text`| type: `boolean`, default: true, set: this.updateTitle |
| `draw_glow`| type: `boolean`, default: true, refreshGeometry: true|
| `auto_load`| type: `boolean`, default: false |
| `thumb_id`| type: `string`, set: this.updateMaterial |
| `shader_id`| type: `string`, set: this.updateMaterial, default: `lava` |
| `mirror`| type: `boolean`, default: false, set: this.updateGeometry |
| `mirror_recursion`| type: `integer`, default: 2, set: this.updateGeometry |
| `mirror_texturesize`| type: `integer`, default: 1024, set: this.updateGeometry |
| `external`| type: `boolean`, default: false |
| `preload`| type: `boolean`, default: false |
| `target`| type: `string`, default: "" |
| `round`| type: `boolean`, default: false |
| `cooldown`| type: `float`, default: 1000 |
| `font`| type: `string`, default: `impact` |
| `font_weight`| type: `string`, default: `bold` |


### &lt;paragraph&gt;

|attribute | type |
|----------|------|
| `text`|type: `string`, default: "", set: this.updateTexture|
| `font_size`|type: `integer`, default: 16, set: this.updateTexture|
| `text_col`|type: `color`, default: 0x000000, set: this.updateTexture|
| `back_col`|type: `color`, default: 0xffffff, set: this.updateTexture|
| `back_alpha`|type: `float`, default: 1, set: this.updateTexture|
| `cull_face`| type: `string`, default: `back`, set: this.updateMaterial |
| `css`|type: `string`, set: this.updateTexture |
| `depth_write`| type: `boolean`, default: true |
| `depth_test`| type: `boolean`, default: true |
| `collision_id`| type: `string`, default: `cube` |
| `collision_scale`| type: `vector3`, default: V(.5, .5, .02) |
| `shadow`| type: `boolean`, default: true, set: this.updateMaterial |
| `shadow_receive`| type: `boolean`, default: true, `Receive shadows from self and other objects` |
| `shadow_cast`| type: `boolean`, default: true, `Cast shadows onto self and other objects` |


### &lt;video&gt;

|attribute | type |
|----------|------|
| `//src`| type: `string` |
| `video_id`| type: `string`, set: this.updateVideo |
| `loop`| type: `boolean`, default: false |
| `sbs3d`| type: `boolean`, default: false |
| `hasalpha`| type: `boolean`, default: true |
| `ou3d`| type: `boolean`, default: false |
| `color`| type: `color`, default: 0xffffff |
| `lighting`| type: `boolean`, default: true |
| `gain`| type: `float`, default: 1.0, set: this.updateSound |


### &lt;sound&gt;

|attribute | type |
|----------|------|
| `sound_id`| type: `string`, set: this.updateSound |
| `singleshot`| type: `boolean`, default: false |
| `positional`| type: `boolean`, default: null |
| `loop`| type: `boolean`, default: false |
| `auto_play`| type: `boolean`, default: false |
| `play_once`| type: `boolean`, default: false |
| `dist`| type: `float`, default: 1.0, set: this.updateSound |
| `pitch`| type: `float`, default: 1.0, set: this.updateSound |
| `gain`| type: `float`, default: 1.0, set: this.updateSound |
| `starttime`| type: `float`, default: 0.0, set: this.updateSound |
| `distancemodel`| type: `string`, default: `inverse`, set: this.updateSound |
| `rolloff`| type: `float`, default: 1.0, set: this.updateSound |
| `rect`| type: `string`, set: this.updateSound |
| `stream`| type: `boolean`, default: false}


### &lt;light&gt;

|attribute | type |
|----------|------|
| `light_directional`| type: `bool`, default: false, set: this.updateLight |
| `light_range`| type: `float`, default: 0, `Max distance at which light can affect objects` |
| `light_intensity`| type: `float`, default: 10, `Light brightness` |
| `light_cone_angle`| type: `float`, default: 0, `Light cone shape. 0 = point light, 1 = directional, anything inbetween is a spotlight` |
| `light_cone_exponent`| type: `float`, default: 1, set: this.updateLight |
| `light_penumbra`| type: `float`, default: 1, `Spotlight fall-off. 0 is crisp, 1 is smooth` |
| `light_decay`| type: `float`, default: 2, `The amount the light dims along the distance of the light. Default is 1. For physically correct lighting, set this to 2.` |
| `light_target`| type: `object`, set: this.updateLightTarget |
| `light_shadow`| type: `boolean`, default: false, `Light casts shadows on scene` |
| `light_shadow_near`| type: `float`, default: .1, set: this.updateLight |
| `light_shadow_far`| type: `float`, set: this.updateLight |
| `light_shadow_bias`| type: `float`, default: .0001, set: this.updateLight |
| `light_shadow_radius`| type: `float`, default: 2.5, set: this.updateLight |
| `light_shadow_size`| type: `int`, default: 512, set: this.updateLight |
| `light_helper`| type: `boolean`, default: false, set: this.updateLightHelper |
| `light_style`| type: `string`, default: "" |
| `light_style_fps`| type: `float`, default: 10 |
| `color_temperature`| type: `float`, set: this.updateLight |
| `collision_id`| type: `string`, default: `sphere`, set: this.updateCollider |
| `collision_trigger`| type: `boolean`, default: true, set: this.updateCollider |


### &lt;websurface&gt;

|attribute | type |
|----------|------|
| `websurface_id`| type: `string` |
| `image_id`| type: `string` |
| `url`| type: `string`, set: this.updateURL |
| `color`| type: `color`, default: 0xffffff |
| `hovercolor`| type: `color`, default: 0x009900 |
| `activecolor`| type: `color`, default: 0x00ff00 }

