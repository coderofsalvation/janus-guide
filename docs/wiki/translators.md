# Translators

JanusWeb translators automatically convert popular websites and fileformats into immersive VR experiences. <br>
It bridges the gap between the existing 2D web and the deep immersive web.

<img src="_media/reddit.jpg"/>

> When typing (or linking) `https://reddit.com/r/WebVR`, JanusWeb will not show it as a webpage, but translate it into a 3D representation. The potential is huge, so developers are welcome to contribute translators of their favorite 2D websites.


# Embeds & Microformats

To maximize discoverability, JanusWeb detects JML and HTML microformats inside other documents.
This broad support and extendability, is crucial for interoperability, allowing existing structured web content to be seamlessly integrated into immersive virtual spaces.

> since v1.1.56 the [XRF microformat](https://xrfragment.org/#XRF%20microformat) is supported to improve XR content on the web.

### Usecase: HTML microformat

Imagine entering the following link into https://web.janusxr.org :

```
https://xrfragments.org
```

> this will load `xrfragments.org/index.html`, detect the [XRF microformat](https://xrfragment.org/#XRF%20microformat) `<link rel="alternate" as="spatial-entrypoint" href="index.glb"/>` and eventually load `index.glb` as a portal/scene.

```
https://xrfragments.org/#world3
```

> this will load `xrfragments.org/index.html`, detect the [XRF microformat](https://xrfragment.org/#XRF%20microformat) `<link rel="alternate" as="spatial-entrypoint" href="index.glb"/>` and eventually load `index.glb` as a portal/scene <b>and spawn the user at object 'world3'</b>

