'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/assest/box0.png": "588ab2fde428fb92bb29e11c2aa73553",
"assets/assest/box1.png": "11d949ec90ffdc9d1bef507b02c4caf6",
"assets/assest/box2.png": "89e44592231193582a5ddb244f39c10e",
"assets/assest/box3.png": "6e2c3b3bb092f003bd2bb6585f815035",
"assets/assest/box4.png": "fa1f4861536d6aacc40fc2b309895c6f",
"assets/assest/box5.png": "edce649826eee5b4a0f7a5bfb12d4d86",
"assets/assest/box6.png": "6880682ae1d490603d49e9110eb06235",
"assets/assest/box7.png": "d5d8cbb393afc33cd49012d6deed2241",
"assets/assest/box8.png": "588ab2fde428fb92bb29e11c2aa73553",
"assets/assest/box9.png": "11d949ec90ffdc9d1bef507b02c4caf6",
"assets/assest/dd.png": "8e5ce3be21b25598eff42afd27dd551c",
"assets/assest/icon.png": "08e64b2e73b4210f4b66450f3503dfac",
"assets/assest/logo.png": "938d6394d3672147bae405efad9d18c8",
"assets/assest/netlogo.png": "2ea85d7448475a744c1485c2eac3d3d1",
"assets/assest/rec0.png": "a6e6821205f15e92b9b0d17ba7446416",
"assets/assest/rec1.png": "dafa02378122fba2cb1bdae0e3387e19",
"assets/assest/rec2.png": "a799f34f06d8f9dc560505f77a2337d5",
"assets/assest/rec3.png": "ae1cb0382b1ae932906dd99371409f47",
"assets/assest/rec4.png": "585ff8d11f298f0cbba10ba3c7c2c391",
"assets/assest/rec5.png": "9fb70852fcdbeafc69c703644fc4cc1e",
"assets/assest/rec6.png": "50c0e4fbe346070b42c47ad2ba223fa0",
"assets/assest/rec7.png": "faa3b60f10f908f9cb6e0b93bb1db67c",
"assets/assest/rec8.png": "4ac85f7318254d4c3ded09ada54ba1aa",
"assets/assest/rec9.png": "d98cf3eaab75c5606be44a46295ca2b4",
"assets/AssetManifest.json": "77b3e817a19df1d050efbdfec83e9df8",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "4d5ca12dd033fa6b4c140367d69301a6",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b14fcf3ee94e3ace300b192e9e7c8c5d",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "34fd60a6f7a9dd419612108b0017c6f4",
"/": "34fd60a6f7a9dd419612108b0017c6f4",
"main.dart.js": "cae5bc6af175c23fa7da9397bfa18a22",
"manifest.json": "d940c5858130d15474d5f84081a78786",
"version.json": "498d68552c06d6dae2f14beddce928b7"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
  for (var resourceKey in Object.keys(RESOURCES)) {
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
