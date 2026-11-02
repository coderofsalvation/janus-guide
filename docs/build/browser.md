# Build a JanusXR browser

> Anyone can build a JanusXR browser with just 3 ingredients: an XML-parser, a [3d-parser](https://assimp.org), and a [media-parser](https://ffmpeg.org) or game-engine ([XURFER](https://codeberg.org/coderofsalvation/xurfer) demonstrates this to the extreme,by offering a textual lua-browser)

JanusXR features can vary based on device- and browser-capabilities:

| JanusXR Browser                                                                  | `<assetscript>` | `<websurface>` | `<assetvideo>` | `<assetghost>` | `.glb` | `.dae` | `.obj` | `.dds` | `.mp3` | `.ogg` | shaders | portals | AR |
|----------------------------------------------------------------------------------|-----------------|----------------|----------------|----------------|--------|--------|--------|--------|--------|--------|---------|---------|----|
| [❤️JanusWeb](https://github.com/jbaicoianu/janusweb)                             | ↔️ evergreen ES |                | ↔️             |                | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | glsl | ✅ jumplinks | ✅ |
| [XURFER](https://codeberg.org/coderofsalvation/xurfer)                           | lua planned     |                |                |                | ✅ |   | ✅ |  | ✅ | ✅ | glsl | ✅ jumplinks | planned |
| [Janus](https://github.com/janusvr/janus)                                        | ↔️ ES3          | ✅             | ↔️             | ✅  | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | | 
| [Steam](http://store.steampowered.com/app/602090/Janus_VR/)                      | ↔️ ES3          | ✅             | ↔️             | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils| |
| [Oculus](https://www.oculus.com/experiences/rift/883825681716606/)               | ↔️ ES3          | ✅             | ↔️             | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | |
| [🪦Viveport](https://www.viveport.com/apps/089021e5-d296-4f02-ae25-55e959cb56b2) | ↔️ ES3          | ✅             | ↔️             | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | |
| [🪦Android](https://play.google.com/store/apps/details?id=org.janusvr)           | ↔️ ES3          | ✅             | ↔️             | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | |
| [🪦Windows](http://builds.janusxr.org/janusvr_windows.exe)                       | ↔️ ES3          | ✅             | ✅             | ↔️ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | | 
| [🪦Linux](http://builds.janusxr.org/janusvr_linux.tar.gz)                        | ↔️ ES3          | ✅             | ✅             | ↔️ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | |
| [🪦OSX](http://downloads.janusxr.org/janusvr.dmg)                                | ↔️ ES3          | ✅             | ✅             | ↔️ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | |

🪦 = no capacity to maintain (maintenance is focused on JanusWeb for the time being)
↔️ = depends on underlying OS/browser. Safe videoformats are `.webm` and `.mp4`. ECMAScript v3 is the lowest common denominator.
 
Most JanusXR browsers support (but not require) presence-servers (like [janus-server](https://github.com/janusvr/janus-server)) which handles interaction between users from both Janus and JanusWeb across 2D displays and VR HMDs, via a network-agnostic open [JSON protocol](https://github.com/janusvr/janus-server/blob/master/API%20Documentation.md)

## Browser (non)standards

JanusXR prioritizes **flexibility** over rigid standards (W3C e.g.) to prevent the technical bloat seen in modern HTML.<br>
By emphasizing **browser flexibility** (not browser-wars), JanusXR ensures that developers can alays build new JML browsers without managing excessive complexity.<br>

> There is no single 'true' JanusXR browser, support **level0** is enough to call something a **JanusXR browser**. That way, embedding JanusXR inside a smartwatch-app or game is stays very cheap.
 
| tag                 | JML0       | JML1       | JML2    | `fileformat` priority  | fallback |
|---------------------|------------|------------|---------|------------------------|------------------|
| `<assets>`          | ✅         | ✅         |         |                        |                  |
| `<assetimage>`      |            | ✅ png     |         | `.png`>`.jpg`>`.gif`>`.svg`   | poll supported extensions or fallback image |
| `<assetsound>`      |            | ✅ ogg     |         | `.ogg`>`.mp3`>`.wav`   | poll supported extensions    |
| `<assetobject>`     | ✅ glb     | ✅ glb     |         | `.glb`>`.dae`>`.obj`>`.stl` | poll supported extensions  |
| `<assetvideo>`      |            |            | ✅ mp4  | `.mp4`>`.webm`>`...`   | poll supported extensions |
| `<assetshader>`     |            |            | ✅      | glsl                   | fallback shader |
| `<assetghost>`      |            |            | ✅      |                        |  |
| `<assetwebsurface>` |            |            | ✅      |                        | room-translator or open in new tab/browser |
| `<assetscript>`     |            |            | ✅      | ES2024 > ES3           |  |
| `<assetrecording>`  |            |            | ✅      |                        |  |
| `<room>`            | ✅         | ✅         |         |                        |  |
| `  skybox=true`     | ✅         | ✅         | ✅      |                        | CSS equivalent: linear-gradient(#79c 20%,#DFF 56%,#FFF 60%) |
| `  skybox_*=str`    |            | ✅         | ✅      |                        |  |
| `<object>`          | ✅ XRF     | ✅ XRF     | ✅ XRF  |                        | 1. camera-spawnpoints via [XR URI Fragments](https://xrfragment.org/#teleport%20camera%20spawnpoint) mapped to `js_id`<br>2. nesting/parenting of (empty) objects should be possible  |
| `<text>`            | ✅         | ✅         |         |                        |  |
| `<image>`           | ✅         | ✅         |         |                        |  |
| `<paragraph>`       | ✅ text    | ✅ text    | html+domselector   | url: `.txt`>`.html`>`.rss`  | `strip html-tags |  |
| `<link>`            | ✅ jumplink| ✅ jumplink| stencils|                        |  |
| `<sound>`           |            |            | ✅      |                        |  |
| `<video>`           |            |            | ✅      |                        |  |
| `<ghost>`           |            |            | ✅      |                        |  |
| `<particle>`        |            |            | ✅      |                        |  |
| `<light>`           |            |            | ✅      |                        |  |

Projects like JanusXR avoid "hardcoded standards" to prevent a Browser Monoculture.<br>
This:

* Avoids Vendor Lock-in by engine diversity.
* Prioritizes Constituencies over technical purity.

So there's no race-to-bottom, where one implementation (like Chromium) dictates the web.<br>
By focusing on Prioritization of Constituencies and file-format interoperability, JanusXR ensures spatial webclusters to remain accessible across diverse, independent engines rather than just one "evergreen" target.

> To ensure the widest support, browsers can embed [ffmpeg](https://ffmpeg.org) for all popular audio/image/video-formats, and [assimp](https://assimp.org) for all popular 3D formats.
