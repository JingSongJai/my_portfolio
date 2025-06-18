'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "caa7fbbb59f9cf0b435798774c0a92fd",
"assets/AssetManifest.bin.json": "0a8bce8853d2b11f29d5f4e7f49361b0",
"assets/AssetManifest.json": "8475df0240f4d3758391fac5da45c0d8",
"assets/assets/font/FiraCode-Regular.ttf": "6c0e247027e8aafe474e53f07365969d",
"assets/assets/font/Khmer%2520CN%2520Kam%2520Rieng%2520V2.ttf": "6ead210c1ad510a9963d9531aeddd245",
"assets/assets/font/Khmvanara.ttf": "50d3a94733cb845dad55318dfb8d3b44",
"assets/assets/icon/svg/Cancel.svg": "58e0ac5442467c4209c060a4f885eaea",
"assets/assets/icon/svg/Discord.svg": "4ab613c834e56c31e520e24ca03e1aef",
"assets/assets/icon/svg/Dribble.svg": "bd152e81767a04a99b1f019f1e5ebba7",
"assets/assets/icon/svg/Email.svg": "21d00c3bcd1c1d6d9a825b957498c1df",
"assets/assets/icon/svg/Figma.svg": "3436529e4ca71aa1775d1e918a3cc3e1",
"assets/assets/icon/svg/Github.svg": "ab1686ef867a34add430e2347ac62afa",
"assets/assets/icon/svg/Linkedin.svg": "710ee731526ed19d01b63fe84102da5e",
"assets/assets/icon/svg/Logo.svg": "81ee51e42fddbe9ef7998814b182ea49",
"assets/assets/icon/svg/Menu.svg": "811d0a0095a96c642e39db7c1b02cdbe",
"assets/assets/icon/svg/Preview.svg": "b3ee742e41e2aee1a4ef3a8d1834a209",
"assets/assets/icon/svg/Profile.svg": "9e563f3f5743684e9e9c04ad7c7a4cd9",
"assets/assets/icon/svg/Quote.svg": "a3a56653acb8cd6160dc1179b5a43387",
"assets/assets/icon/svg/Telegram.svg": "6b6f518791e07e7d63ca2b14587f1cd7",
"assets/assets/icon/svg/Twitter.svg": "328b6d38af79494d72241d7e9e80f887",
"assets/assets/image/ExpenseTracker.png": "3f96fb631d60af69a0efa2c110453a85",
"assets/assets/image/FlutterDictionary.png": "c766bb4a361c3f498864c76f91fdc724",
"assets/assets/image/MusicPlayer.png": "720e02e527a7199d792b19379d7958ad",
"assets/assets/image/NoteApp.jpg": "d4fce6a71776ce2d2389f84082be4e7c",
"assets/assets/image/Profile.png": "04ab674e9cf3bc6e7e2e085b92874fcc",
"assets/assets/image/Project-1.png": "780e0946699394523f159c7ddca06e03",
"assets/assets/image/WinFormDictionary.png": "10efa98facb1a78ee95c4828362cb494",
"assets/assets/image/YoutubeDownloader.png": "ffc399c29147bbcbfcd4ec6fc6f0db85",
"assets/FontManifest.json": "e5b73c4a9c26f7ce45b0fe94936ad21d",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "0dc2245474d25c29767a83f420fd7198",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/splash_logo.gif": "0d8dd916f0ee541fbe6854de207f74bb",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.ico": "f3af8d2b39e6f911e04f069791cb6fa7",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "04652e81a4325cf8bade0a34f0365782",
"icons/Icon-192-maskable.png": "2bf6b9ec7fee754e41e5bb0dff89b7f8",
"icons/Icon-192.png": "212f8dcc008606883aa8b67f8c02cd95",
"icons/Icon-512-maskable.png": "8f4bc7fe6f368fc483b7b22f15057925",
"icons/Icon-512.png": "348ba63f18b1473081f6ce7414143ca1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "b69428472ce2c98fc6b2daf749109c17",
"/": "b69428472ce2c98fc6b2daf749109c17",
"main.dart.js": "9c029dc059c698abcf9f23e4dd6dc372",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "0325640b78b9f97959290dc5ebb8b3ed"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
