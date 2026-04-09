### Tools

There are various third-party tools made by the community:

* [janusxr.com](https://github.com/jbaicoianu/janusweb) browser/server-executable 
* [janusxr-cli](https://github.com/coderofsalvation/janusxr-cli) Portable swiss-army knife to automate janusXR / JML things in the shell
* [janus_bot](https://github.com/coderofsalvation/janus_bot)
* [And more](https://github.com/search?q=janusvr%20janus&type=repositories)

### janusxr.com

This is the tiniest crossplatform executable with builtin server/(janusweb)client.<br>
It allows viewing URLs as well as setting up a server-node (incl. LUA scripting).

```bash
$ chmod +x janusxr.com          # only for non-windows users

$ ./janusxr.com 
I2026-01-19T15:41:10 (srvr) listen http://127.0.0.1:8080
I2026-01-19T15:41:10 (srvr) listen http://192.168.1.168:8080
Launching browser..

```

> Now your browser pops up and you can surf in 3D

It also automatically serves rooms from the same directory, so it can act as a server-node too.

> To read more about <b>janusxr.com</b>, see the Janusweb [repository](https://github.com/jbaicoianu/janusweb)

### XRForge selfhostable platform

Similar to Vesta, XRForge is a JanusXR-stack-in-a-docker including [janusweb](https://github.com/jbaicoianu/janusweb)

<img alt="XRForge" target="_blank" src="_media/xrforge.png" width="100%"/>

> Check the project website [here](https://xrforge.isvery.ninja) and [repository here](https://codeberg.org/coderofsalvation/xrforge)

Or try it now:

```bash
$ docker run -p 8080:3214 -p 5566:5566 -p 5577:5577 codeberg.org/coderofsalvation/xrforge:latest
```

> now surf your browser to `https://localhost:8080`

### JANUSXR-CLI

```
Usage: ./janusxr health <room_url> [--max-time-per-asset 5] 
       ./janusxr scrape <room_url> <outdir>
       ./janusxr optimize <room_url> 
```

> scan a room URL for broken links in JML+HTML

```bash
$ ./janusxr health http://localhost:8790/models/m5gr26w0wqqs

✅ http://localhost:8791/templates/xrfragment/%232/website.glb
✅ http://localhost:8790/models/assets/offscreen_renderer-186b8c52.js
✅ https://lychee.co/static/metas/favicon-32x32.png
✅ https://raw.githubusercontent.com/supermerill/SuperSlicer/refs/heads/master_27/resources/icons/SuperSlicer.svg
✅ http://localhost:8790/models/models/m5gr26w0wqqs/model_files/website.glb
✅ https://raw.githubusercontent.com/ELEGOO-3D/ElegooSlicer/refs/heads/main/resources/images/ElegooSlicer.svg
✅ http://localhost:8790/models/assets/roundel-1d688b1e.svg
✅ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/webp/orcaslicer.webp
✅ http://localhost:8790/models/models/m5gr26w0wqqs/model_files/gjc0jp33r6zl.jpg?derivative=carousel
✅ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/webp/cura.webp
✅ http://localhost:8790/models/assets/application-01a8ec1d.js
✅ http://localhost:8790/models/assets/janusxr.svg
⚕️ health: 100%

```

> scrape a room URL and rewrite JML to serve local assets (usecase: preservation/local-first/prototyping)

```bash
$ ./janusxr scrape https://www.janusxr.org/newlobby/index.html mydir
🔗 http://dizzket.com/archive/dotmatrix/
🔗 https://vesta.janusvr.com/nazrin/minecraft-sandbox
✅ http://www.janusvr.com/newlobby/scripts/home.txt
...

$ ls -la mydir
index.html
home.txt
...
```

> optimize a room by adding tags to your JML

```bash
$ ./janusxr optimize https://janusvr.com/newlobby/index.html

<!-- copy/paste below into your HTML/JML-file -->

<a href='http://www.janusvr.com/newlobby/scripts/home.txt'/>
<a href='http://timigi.com'/>
<link rel='preconnect' href='http://timigi.com'/>
<a href='http://janusvr.thevirtualarts.com/random1.php'/>
<link rel='preconnect' href='http://janusvr.thevirtualarts.com'/>
<a href='http://www.janusvr.com/newlobby/images/windmill1.png'/>
...

```

* `preconnect` speeds up loading remote resources (DNS lookup, TCP handshake, TLS negotiation)
* &lt;a href=".."&gt; allows archive.org to fully capture the room (resources)

