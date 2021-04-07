const cacheName = 'cache-v1';
const staticAssests = [
	'./',
	'./application.scss',
	'./application.js'
];


self.addEventListener('install', function(event) {
    console.log('Service Worker installing.');
    const cache =  caches.open(cacheName);
     cache.addAll(staticAssests);
    return self.skipWaiting();
});

self.addEventListener('activate', function(event) {
    console.log('Service Worker activated.');
    self.clients.claim();
});
self.addEventListener('fetch', function(event) {
    console.log('Service Worker fetching.');
});