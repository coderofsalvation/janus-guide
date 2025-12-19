# Federation & Security of JanusXR web-clusters

<center><img src="_media/73KaQJ3.jpg"/></center>

> Any JanusXR room can link to any JanusXR room, full stop.

JanusXR pioneers a **permissionless frontier** for spatial web-clusters,<br>
operating on the principle that security must **never rely on naive assumptions**,<br>
but rather on robust, protocol-level enforcement.<br>
By treating the web as an open canvas, it empowers creators to build without gatekeepers,<br>
allowing protocols (like HTTP) to enforce W3C Content Security Policies to define granular trust boundaries for every federated asset. 

<center><img style="width:100%; max-width:900px" src="_media/Mdfhf3d.jpg"/></center>

> **Important**: JanusXR mirrors a [Content-Federation-model](https://en.wikipedia.org/wiki/Fediverse) by reversing the table,<br>shifting security from restrictive [CORS blocking](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing) to a decentralized federation-model,<br>centered on [W3C's CSP3](https://www.w3.org/TR/CSP3/).<br><br>This removes the burden from content creators/hosters,<br>who no longer need to configure `Access-Control-Allow-Origin` on every asset host, instead centralizing that technical overhead for JanusWeb admins who manage trust via W3C CSP Level 3 headers.

Below are examples on using [CSP3 (W3C Content Security Policy)](https://www.w3.org/TR/CSP3/) of the HTTP protocol 

## Via metatags 


#### **Example**: Disallow assetscripts from another server

```html
<html>
  <head>
    <meta http-equiv="Content-Security-Policy" content="script-src 'self';">
  </head>
  <body>
    <janus-viewer src="https://www.janusxr.org/"></janus-viewer>
    ...
```

> The JanusXR client can hint the user with the security-policies and offer a link to https://web.janusxr.org/index.html?janus.url=<the url> to view the experience including scripts at own risk.

#### **Example**: Allow all assetscripts from another server

```html
<html>
  <head>
    <meta http-equiv="Content-Security-Policy" content="script-src https://federatedServerA.com https://federatedServerB.org; ">
  </head>
  <body>
    <janus-viewer src="https://www.janusxr.org/"></janus-viewer>
    ...
```

> Refer to W3C CSP Level 3 for valid source expressions.

####  **Example** Allow assetscripts only from a certain folder

```html
<html>
  <head>
    <meta http-equiv="Content-Security-Policy" content="script-src https://schoolA.org/ageBelow14/ https://kids.org/childrenXR/;">
  </head>
  <body>
    <janus-viewer src="https://www.janusxr.org/"></janus-viewer>
    ...
```

> Optionally, the JanusXR client can hint the user with the security-policies and offer a link to https://web.janusxr.org/index.html?janus.url=<the url> to view the experience including scripts at own risk.

## Via server header examples

> **NOTE**: below shows fine-grained examples of allowin `<assetscript>` tags, but you can also use `default-src` federate **any** type of content (images too e.g.) from another server.

| Usecase | server header | info |
|-|-|-|
| Disallow assetscripts from another server | `Content-Security-Policy: script-src 'self';` | > The JanusXR client can hint the user with the security-policies and offer a link to `https://web.janusxr.org/index.html?janus.url=<the url>` to view the experience including scripts at own risk. |
| Allow all assetscripts from another server | `Content-Security-Policy: script-src https://trusted-assets.com;` | Source: W3C CSP Level 3. |
| Allow assetscripts only from a certain folder | `Content-Security-Policy: script-src https://example.com/scripts/;`| The JanusXR client can hint the user with the security-policies and offer a link to https://web.janusxr.org/index.html?janus.url=<the url> to view the experience including scripts at own risk. |
