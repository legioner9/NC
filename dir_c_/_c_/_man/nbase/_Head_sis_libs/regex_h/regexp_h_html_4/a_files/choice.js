'use strict';(function(){var cmpFile='noModule'in HTMLScriptElement.prototype?'cmp2.js':'cmp2-polyfilled.js';(function(){var cmpScriptElement=document.createElement('script');var firstScript=document.getElementsByTagName('script')[0];cmpScriptElement.async=true;cmpScriptElement.type='text/javascript';var cmpVersion='https://quantcast.mgr.consensu.org/tcfv2/CMP_FILE?referer=www.themoneytizer.com'.replace('CMP_FILE',cmpFile);cmpScriptElement.src=cmpVersion;firstScript.parentNode.insertBefore(cmpScriptElement,firstScript);})();(function(){var css=""
+" .qc-cmp-button.qc-cmp-secondary-button:hover { "
+"   background-color: #368bd6 !important; "
+"   border-color: transparent !important; "
+" } "
+" .qc-cmp-button.qc-cmp-secondary-button:hover { "
+"   color: #ffffff !important; "
+" } "
+" .qc-cmp-button.qc-cmp-secondary-button { "
+"   color: #368bd6 !important; "
+" } "
+" .qc-cmp-button.qc-cmp-secondary-button { "
+"   background-color: #eee !important; "
+"   border-color: transparent !important; "
+" } "
+""
+"";var stylesElement=document.createElement('style');var re=new RegExp('&quote;','g');css=css.replace(re,'"');stylesElement.type='text/css';if(stylesElement.styleSheet){stylesElement.styleSheet.cssText=css;}else{stylesElement.appendChild(document.createTextNode(css));}
var head=document.head||document.getElementsByTagName('head')[0];head.appendChild(stylesElement);})();var autoDetectedLanguage='en';function splitLang(lang){return lang.length>2?lang.split('-')[0]:lang;};function isSupported(lang){var langs=['en','fr','de','it','es','da','nl','el','hu','pt','ro','fi','pl','sk','sv','no','ru','bg','ca','cs','et','hr','lt','lv','mt','sl','tr','zh'];return langs.indexOf(lang)===-1?false:true;};if(isSupported(splitLang(document.documentElement.lang))){autoDetectedLanguage=splitLang(document.documentElement.lang);}else if(isSupported(splitLang(navigator.language))){autoDetectedLanguage=splitLang(navigator.language);};var choiceMilliSeconds=(new Date).getTime();window.__tcfapi('init',2,function(){},{'premiumProperties':{'googleWhitelist':[1]},'coreUiLabels':{},'premiumUiLabels':{},'theme':{},'coreConfig':{'consentScope':'service','thirdPartyStorageType':'iframe','consentOnSafari':false,'lang_':autoDetectedLanguage,'displayUi':'inEU','initScreenBodyTextOption':1,'defaultToggleValue':'off','initScreenRejectButtonShowing':false,'publisherConsentRestrictionIds':[],'publisherLIRestrictionIds':[],'softOptInEnabled':false,'showSummaryView':true,'persistentConsentLinkLocation':3,'displayPersistentConsentLink':true,'uiLayout':'banner','publisherPurposeIds':[],'publisherPurposeLegitimateInterestIds':[],'publisherSpecialPurposesIds':[],'publisherFeaturesIds':[],'publisherSpecialFeaturesIds':[],'stacks':[1,42],'vendorListUpdateFreq':30,'quantcastAccountId':'6Fv0cGNfc_bw8','privacyMode':["GDPR","USP"],'hashCode':'HbxGb+34XCkQ4dJL2MD7TA','publisherCountryCode':'US','publisherName':'themoneytizer.com','vendorPurposeIds':[1,2,3,4,5,6,7,8,9,10],'vendorFeaturesIds':[1,2,3],'vendorPurposeLegitimateInterestIds':[2,3,4,5,6,7,8,9,10],'vendorSpecialFeaturesIds':[1,2],'vendorSpecialPurposesIds':[1,2],'googleEnabled':true,'uspVersion':1,'uspJurisdiction':["CA"],'uspLspact':'N','suppressCcpaLinks':true},'nonIabVendorsInfo':{}});})();