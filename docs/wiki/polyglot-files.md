# Polyglot files

JanusWeb uniquely supports polyglot documents, which makes sense since the god Janus has 2 faces.

> Polyglot documents are like virtual twins, without the real/virtual separation.

Adding spatial metadata to existing files is exciting, and detected automatically (see [translators](wiki/translators.md)), this includes files like:

* PDF
* JPG
* PNG
* MP3
* almost anything

# Usecases

* embed XR experience in `mysong.mp3`
* embed spatial conference call in `businessplan.pdf`
* embed data visualisation in `forecast.xlsx`
* embed XR annotations for `3dmodels.glb`

> but also embedding: immersive training module, medical model, historical archive, architectural plan etc.

# Example: embed JML room into PDF

Lets assume we have the following file `my.jml`:

```xml
<FireBoxRoom>
  <Room use_local_asset="room1">
    <Paragraph pos="0 0.7 1.2" rotation="0 180 0" col="#00AAFF" locked="false">this is the virtual twin of this file/URL</Paragraph>
  </Room>
</FireBoxRoom>
```

> Launch a terminal and type:

```
$ cat my.pdf my.jml > my-spatial.pdf
```

When you visit `my-spatial.pdf`:

* in a browser: you'll see the pdf.
* in JanusWeb: you'll see the JanusVR room.

# Planned

allow the polyglot JML to use itself as asset..to allow a portable spatial 'twin'. 
Example: an mp3 which plays itself in its own room, or a htmlfile which renders itself in its own room on a websurface 🤔 
Basically:

```
<AssetAudio url="self"> 
<AssetWebsurface url="self">
<AssetImage url="self://logo.png">
```

The last example is deep-referencing logo.png from a selfcontained polyglot zip/jyml, created using:

```
$ zip files.zip logo.png
$ cat files.zip my.jml > files.zip
```

The USP for polyglot files, is separating immutable vs mutable data (file + JML).<br>

> basically what xattrs (extended attributes) tried to achieve, but more practical/share-able (xattr lives outside of the file).

# Concerns

One might think that virusscanners will flag this, but the risks are very low.
The intended application (PDF reader/Webbrowser e.g.) only processes the data stream starting from the standard PDF file header (%PDF-), effectively ignoring the harmless extra bytes at the end.<br>
The appended XML remains outside the defined (PDF) structure and is not executed or interpreted as code by either the (PDF) reader or the antivirus software's PDF parsing engine.


