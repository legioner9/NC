(()=>{"use strict";function d(d){var i,e,n,o="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g,(function(d){var i=16*Math.random()|0;return("x"==d?i:3&i|8).toString(16)}));if(i=window.ID5&&!0===window.ID5.initialized&&window.ID5.userId?"&dsp=id5&dsp_uid="+ID5.userId:window.pbjs&&window.pbjs.getUserIds&&window.pbjs.getUserIds().id5id&&window.pbjs.getUserIds().id5id.uid?"&dsp=id5&dsp_uid="+window.pbjs.getUserIds().id5id.uid:"",e=window.localStorage&&window.localStorage._pubcid?"&dsp=pub_common&dsp_uid="+window.localStorage._pubcid:window.pbjs&&window.pbjs.getUserIds&&window.pbjs.getUserIds().pubcid?"&dsp=pub_common&dsp_uid="+window.pbjs.getUserIds().pubcid:"",window.__uid2&&window.__uid2.getAdvertisingTokenAsync)window.__uid2.getAdvertisingTokenAsync().then((function(d){d&&((new Image).src="https://s.cpx.to/sync?dsp=uid2&dsp_uid="+d+"&fid="+o)})),n="";else if(window.__uid2&&window.__uid2.getAdvertisingToken){var s=window.__uid2.getAdvertisingToken();s&&(n="&dsp=uid2&dsp_uid="+s)}else n="";var t=encodeURIComponent(document.referrer),w=encodeURIComponent(document.URL),r=window.captify_kw_query_12771?"&kw="+encodeURIComponent(captify_kw_query_12771):"",c="pid=12771&ref="+t+"&url="+w+"&hn_ver=40&fid="+o+r+(d?"&gcv="+d:"")+i+e+n,u=document.createElement("script");u.src="https://s.cpx.to/fire.js?"+c,document.head.appendChild(u)}!function(){if(window.__tcfapi)window.__tcfapi("getTCData",2,(function(i,e){d(i.tcString)}));else if(window.__cmp)window.__cmp("getConsentData",null,(function(i,e){d(i&&i.consentData||"")}));else{for(var i=["euconsent","euconsent-v2","euconsent-v2_backup"],e=document.cookie.split(";"),n="",o=0;o<e.length;o++){var s=e[o].trim(),t=s.indexOf("="),w=s.slice(0,t),r=s.slice(t+1);if(i.includes(w)){n=r;break}}d(n||"")}}()})();