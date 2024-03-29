// Override configs in Firefox arkenfox/user.js
/* 0102: set startup page [SETUP-CHROME]
 * 0=blank, 1=home, 2=last visited page, 3=resume previous session
 * [NOTE] Session Restore is cleared with history (2811), and not used in Private Browsing mode
 * [SETTING] General>Startup>Restore previous session ***/
user_pref("browser.startup.page", 1);
/* 0103: set HOME+NEWWINDOW page
 * about:home=Firefox Home (default, see 0105), custom URL, about:blank
 * [SETTING] Home>New Windows and Tabs>Homepage and new windows ***/
user_pref("browser.startup.homepage", "about:home");

/* override recipe: enable session restore ***/
user_pref("browser.startup.page", 3); // 0102
user_pref("browser.newtabpage.enabled", true);
// user_pref("browser.privatebrowsing.autostart", false); // 0110 required if you had it set as true
// user_pref("browser.sessionstore.privacy_level", 0); // 1003 optional to restore cookies/formdata
user_pref("privacy.clearOnShutdown.history", false); // 2811
user_pref("privacy.clearOnShutdown.cache", false); // [DEFAULT: true]
user_pref("privacy.clearOnShutdown.downloads", false); // [DEFAULT: true]
user_pref("privacy.clearOnShutdown.sessions", false); // [DEFAULT: true]

user_pref("privacy.clearOnShutdown.cookies", false); // Cookies
user_pref("privacy.clearOnShutdown.offlineApps", false); // Site Data
// user_pref("privacy.cpd.history", false); // 2820 optional to match when you use Ctrl-Shift-Del

/* 4501: enable privacy.resistFingerprinting [FF41+]
 * [SETUP-WEB] RFP can cause some website breakage: mainly canvas, use a site exception via the urlbar
 * RFP also has a few side effects: mainly timezone is UTC0, and websites will prefer light theme
 * [1] https://bugzilla.mozilla.org/418986 ***/
user_pref("privacy.resistFingerprinting", false);
user_pref("privacy.resistFingerprinting.letterboxing", false); // [HIDDEN PREF]
user_pref("webgl.disabled", false);

/* 0801: disable location bar using search
 * Don't leak URL typos to a search engine, give an error message instead
 * Examples: "secretplace,com", "secretplace/com", "secretplace com", "secret place.com"
 * [NOTE] This does not affect explicit user action such as using search buttons in the
 * dropdown, or using keyword search shortcuts you configure in options (e.g. "d" for DuckDuckGo)
 * [SETUP-CHROME] Override this if you trust and use a privacy respecting search engine ***/
user_pref("keyword.enabled", true);

/* 1601: control when to send a cross-origin referer
 * 0=always (default), 1=only if base domains match, 2=only if hosts match
 * [SETUP-WEB] Breakage: older modems/routers and some sites e.g banks, vimeo, icloud, instagram
 * If "2" is too strict, then override to "0" and use Smart Referer extension (Strict mode + add exceptions) ***/
user_pref("network.http.referer.XOriginPolicy", 0);
user_pref("network.http.referer.XOriginTrimmingPolicy", 0);

/* override recipe: enable DRM and let me watch videos ***/
// user_pref("media.gmp-widevinecdm.enabled", true); // 2021 default-inactive in user.js
user_pref("media.eme.enabled", true); // 2022

/* 0701: disable IPv6
 * IPv6 can be abused, especially with MAC addresses, and can leak with VPNs: assuming
 * your ISP and/or router and/or website is IPv6 capable. Most sites will fall back to IPv4
 * [STATS] Firefox telemetry (Sept 2022) shows ~8% of successful connections are IPv6
 * [NOTE] This is an application level fallback. Disabling IPv6 is best done at an
 * OS/network level, and/or configured properly in VPN setups. If you are not masking your IP,
 * then this won't make much difference. If you are masking your IP, then it can only help.
 * [NOTE] PHP defaults to IPv6 with "localhost". Use "php -S 127.0.0.1:PORT"
 * [TEST] https://ipleak.org/
 * [1] https://www.internetsociety.org/tag/ipv6-security/ (Myths 2,4,5,6) ***/
user_pref("network.dns.disableIPv6", false);

/* 0210: set preferred language for displaying pages
 * [SETTING] General>Language and Appearance>Language>Choose your preferred language...
 * [TEST] https://addons.mozilla.org/about ***/
user_pref("intl.accept_languages", "en-US, en, zh-CN, zh, zh-TW, zh-HK");
