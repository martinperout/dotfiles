// ==UserScript==
// @name         NoMoreYoutubeShorts
// @namespace    http://tampermonkey.net/
// @version      2026-02-01
// @description  Block YouTube Shorts by redirecting to the homepage
// @author       Me
// @match        https://www.youtube.com/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=youtube.com
// @grant        none
// ==/UserScript==

(function () {
    const REDIRECT_URL = "https://www.youtube.com/";

    function blockShorts() {
        if (location.pathname.startsWith("/shorts")) {
            location.replace(REDIRECT_URL);
        }
    }

    blockShorts();

    let lastPath = location.pathname;
    new MutationObserver(() => {
        if (location.pathname !== lastPath) {
            lastPath = location.pathname;
            blockShorts();
        }
    }).observe(document, { subtree: true, childList: true });
})();