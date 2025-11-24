### Tools

There are various third-party tools made by the community:

* [janusxr-cli](https://github.com/coderofsalvation/janusxr-cli) Portable swiss-army knife to automate janusXR / JML things in the shell
* [janus_bot](https://github.com/coderofsalvation/janus_bot)
* [And more](https://github.com/search?q=janusvr%20janus&type=repositories)

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


