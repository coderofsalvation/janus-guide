Janusweb supports RSS/Atom feeds by auto-generating a 3D room around it.
This can be triggered in various ways:

<video width="100%" style="max-width:900px" controls>
  <source src="_media/rss.mp4" type="video/mp4"/>
  Your browser does not support the video tag.
</video>

## Via the url-bar

1. entering an URL with an `.rss` extension (`https://mastodon.online/@lvk.rss` e.g.) [demo](https://web.janusxr.org/#janus.url=https://mastodon.online/@lvk.rss)
2. entering any URL which references a textfile which contains `<feed` or `<rss` 
3. entering any website which contains `<link rel="alternate" ..>` to a feed

> Chances are that your blog/website already supports this

## Programmatically

You can add RSS-portals/textures to your world/room in the following ways:

```xml
<!-- this will render the RSS as texture and cycle items every 4 secs -->
<!-- clicking it will activate manual cycling                         -->
<paragraph url="https://mastodon.online/@lvk.rss" cycle="4000"/>
```

```xml
<!-- this will create a clickable portal to the rss -->
<link url="https://mastodon.online/@lvk.rss"/>
```

