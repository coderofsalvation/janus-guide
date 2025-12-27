# Build a JanusXR browser

> Anyone can build a JanusXR browser with just a teaspoon of XML and 5 drops of 3D knowledge.<br> 

JanusXR features can vary based on device- and browser-capabilities:

| JanusXR Browser                                                                  | `<assetscript>` | `<websurface>` | `<assetvideo>` | `<assetghost>` | `.glb` | `.dae` | `.obj` | `.dds` | `.mp3` | `.ogg` | shaders | portals | AR |
|----------------------------------------------------------------------------------|-----------------|----------------|----------------|----------------|--------|--------|--------|--------|--------|--------|---------|---------|----|
| [❤️JanusWeb](https://github.com/jbaicoianu/janusweb)                             | ↔️ evergreen    |                | ↔️             |                | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | glsl | ✅ jumplinks | ✅ |
| [Janus](https://github.com/janusvr/janus)                                        | ↔️ ES3          | ✅             | ↔️             | ✅  | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | | 
| [Steam](http://store.steampowered.com/app/602090/Janus_VR/)                      | ↔️ ES3          | ✅             | ↔️             | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils| |
| [Oculus](https://www.oculus.com/experiences/rift/883825681716606/)               | ↔️ ES3          | ✅             | ↔️             | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | |
| [🪦Viveport](https://www.viveport.com/apps/089021e5-d296-4f02-ae25-55e959cb56b2) | ↔️ ES3          | ✅             | ↔️             | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | |
| [🪦Android](https://play.google.com/store/apps/details?id=org.janusvr)           | ↔️ ES3          | ✅             | ↔️             | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | |
| [🪦Windows](http://builds.janusxr.org/janusvr_windows.exe)                       | ↔️ ES3          | ✅             | ✅             | ↔️ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | | 
| [🪦Linux](http://builds.janusxr.org/janusvr_linux.tar.gz)                        | ↔️ ES3          | ✅             | ✅             | ↔️ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | |
| [🪦OSX](http://downloads.janusxr.org/janusvr.dmg)                                | ↔️ ES3          | ✅             | ✅             | ↔️ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |  glsl | ✅ stencils | |

↔️ = depends on underlying OS/browser. Safe videoformats are `.webm` and `.mp4`. ECMAScript v3 is the lowest common denominator.
 
Most JanusXR browsers support (but not require) a **public** presence-server which handles interaction between users from both Janus and JanusWeb across 2D displays and VR HMDs.

## Browser (non)standards

JanusXR prioritizes **flexibility** over rigid standards (W3C e.g.) to prevent the technical bloat seen in modern HTML.<br>
By emphasizing **browser flexibility** (not browser-wars), JanusXR ensures that developers can always build new JML browsers without managing excessive complexity.<br>

> There is no single 'true' JanusXR browser, support **level1** is enough to call something a **JanusXR browser**. That way, embedding JanusXR inside a smartwatch-app or game is stays very cheap.
 
| tag                 | JML level1 | JML level2  | `fileformat` priority  | fallback |
|---------------------|--------|---------|------------------------|------------------|
| `<assets>`          | ✅     |         |                        |                  |
| `<assetimage>`      | ✅ png |         | `.png`>`.jpg`>`.gif`   | poll supported extensions or fallback image |
| `<assetsound>`      | ✅ ogg |         | `.ogg`>`.mp3`>`.wav`   | poll supported extensions    |
| `<assetobject>`     | ✅ glb |         | `.glb`>`.dae`>`.obj`>`.stl` | poll supported extensions  |
| `<assetvideo>`      |        | ✅ mp4  | `.mp4`>`.webm`>`...`   | poll supported extensions |
| `<assetshader>`     |        | ✅      | glsl                   | fallback shader |
| `<assetghost>`      |        | ✅      |                        |  |
| `<assetwebsurface>` |        | ✅      |                        | room-translator or open in new tab/browser |
| `<assetscript>`     |        | ✅      | ES2024 > ES3           |  |
| `<assetrecording>`  |        | ✅      |                        |  |
| `<room>`            | ✅     |         |                        |  |
| `<object>`          | ✅     |         |                        |  |
| `<text>`            | ✅     |         |                        |  |
| `<image>`           | ✅     |         |                        |  |
| `<paragraph>`       | ✅     | html    | strip html-tags        |  |
| `<link>`            | ✅ jump| stencils|                        |  |
| `<sound>`           |        | ✅      |                        |  |
| `<video>`           |        | ✅      |                        |  |
| `<ghost>`           |        | ✅      |                        |  |
| `<particle>`        |        | ✅      |                        |  |
| `<light>`           |        | ✅      |                        |  |

Projects like JanusXR avoid "hardcoded standards" to prevent a Browser Monoculture.<br>
This:

* Avoids Vendor Lock-in by engine diversity.
* Prioritizes Constituencies over technical purity.

So there's no race-to-bottom, where one implementation (like Chromium) dictates the web.<br>
By focusing on Prioritization of Constituencies and file-format interoperability, JanusXR ensures spatial webclusters to remain accessible across diverse, independent engines rather than just one "evergreen" target.

> To ensure the widest support, browsers can embed [ffmpeg](https://ffmpeg.org) for all popular audio/image/video-formats, and [assimp](https://assimp.org) for all popular 3D formats.
