window._mntzm_country='ru';window._mntzm_country_1='ru';window._mntzm_country_2='ru';window._jj_Reworld=12;window._jj_TMZ=1;var _mntzm_widget_url_prefix=document.currentScript.src.split('/').splice(0,3).join('/');var _mntzm_LOADING_BANNER=window._mntzm_LOADING_BANNER||'';var _mntzm_LOADING_JJ=window._mntzm_LOADING_JJ||'';var _mntzm_LOADING_JJ_ERR=window._mntzm_LOADING_JJ_ERR||'';var _mntzm_LOADING_OFFERS1=window._mntzm_LOADING_OFFERS1||'';var _mntzm_LOADING_OFFERS2=window._mntzm_LOADING_OFFERS2||'';var _mntzm_LOADING_OFFERS3=window._mntzm_LOADING_OFFERS3||'';var _mntzm_LOADING_AD=window._mntzm_LOADING_AD||'';function mntzm_widget(api_key,container_selector,options){options=options||{};var defaultOptions={api_key:api_key,query:'',cat_id:'',group_id:'',ean:'',limit:10,country:window._mntzm_country||'',best:'',platform:'',merchant:'',subid:"widget:"+window.location.hostname,template:'default',direction:'ltr',strict:false,no_cache:false,};for(p in defaultOptions){if(typeof(options[p])=='undefined'&&options[p]!=''){options[p]=defaultOptions[p]}}if(options.country=='gb'){options.country='uk'}if(options.country==''){options.country=_getCountryByLanguage()}if(options.country==''){return}var jj_countries_tmz=['fr','es','it','de','uk','us','br','pl','ar','ua','in','be','pt','ch','dk','be','cz','mx','ca','se','at','nl','no','fi','ru'];var jj_countries_rwm=['fr'];var cdg_countries_tmz=['fr','es','it','de','uk','us','br','pl','ar','ua','in','be','pt','ch','dk','be','cz','mx','ca','se','at','nl','no','fi'];var cdg_countries_rwm=['fr'];var included_countries=['fr','es','it','de','uk'];var filtered_countries=['us','br'];var widget_loaded=false;var offers_loaded=false;var widget_item_template=null;var widget_offers=null;var widget_pixels=null;var call_id=null;var cat_id_search=null;var cat_id_group=null;var cat_fullname=null;var x_results=null;var container=document.querySelector(container_selector);var country_from_language=0;function _ajax(url,callback,error){if(window.Promise){return _ajaxPromise(url).then(callback).catch(error)}var xhr=new XMLHttpRequest();xhr.open('GET',url);xhr.onload=function(){if(xhr.status===200){if(typeof(callback)!=='undefined'){callback(xhr)}}else{if(typeof(error)!=='undefined'){error(xhr)}}};xhr.send()}async function _ajaxPromise(url){return new Promise((resolve,reject)=>{var xhr=new XMLHttpRequest();xhr.open('GET',url);xhr.onload=function(){if(xhr.status===200){resolve(xhr)}else{reject(xhr)}};xhr.send()})}function _getCountryByLanguage(){var language_country=window.navigator.userLanguage||window.navigator.language||window.navigator.browserLanguage||'';var parts=language_country.split('-');if(parts.length>1){var country=parts[1].toLocaleLowerCase();country_from_language=1}else{var language=parts[0].toLocaleLowerCase();var country="";country_from_language=2}return country}function _isRwm(){return(api_key=='b39c9c48afcb2cfdaea468d36bfe6c2b')}function _isTmz(){return(api_key=='cecc8482144484515ed73d426e681217')}function _isHito(){return(api_key=='1bbbd7d4c3fe03be9d98809634b2b4a9')}function _getGlobalBypassRedirect(skips){const _jj_Reworld=window._jj_Reworld||0;const _jj_TMZ=window._jj_TMZ||0;if(!skips||!skips.jj){var rand_jj=Math.random()*100;if(_isTmz()&&jj_countries_tmz.indexOf(options.country)>-1&&rand_jj<=_jj_TMZ){return fallbackJJ}else if(_isRwm()&&jj_countries_rwm.indexOf(options.country)>-1&&rand_jj<=_jj_Reworld){return fallbackJJ}}if(false){return fallbackOpt}if(!skips||!skips.cdg){var rand_cdg=Math.random()*100;if(_isRwm()&&cdg_countries_rwm.indexOf(options.country)>-1&&rand_cdg<100){return loadCondigo}else if(_isTmz()&&cdg_countries_tmz.indexOf(options.country)>-1&&rand_cdg<100){return loadCondigo}}if(filtered_countries.indexOf(options.country)>-1){var rand_filt=Math.random()*100;if(rand_filt<0&&['us'].indexOf(options.country)>-1){}else if(rand_filt<=5&&['br'].indexOf(options.country)>-1){}else{return fallbackOpt}}else if(included_countries.indexOf(options.country)==-1){return fallbackOpt}else{}return}function fallbackOpt(){container.innerHTML='';container.innerHTML=_mntzm_LOADING_BANNER;var url_ajax=window._api_redirect_host||"https://hublnk.com";url_ajax+="/campaign?";url_ajax+="&country="+options.country;url_ajax+="&api_key="+api_key;url_ajax+="&template="+options.template;url_ajax+="&direction="+options.direction;url_ajax+="&format="+_getWidgetFormat(options.template,options.direction);if(window._api_country_host&&_api_country_host.indexOf('.dev.')){url_ajax+="&debugbar=0"}_ajax(url_ajax,function(xhr){if(xhr.responseText){var sub2=api_key;var sub3=[];if(options.group_id){sub3.push('group_id:'+options.group_id)}if(options.cat_id){sub3.push('cat_id:'+options.cat_id)}if(options.query){sub3.push('query:'+encodeURIComponent(options.query))}if(window.cat_id_group){sub3.push('group_cat_id:'+cat_id_group)}if(window.cat_id_search){sub3.push('search_cat_id:'+cat_id_search)}sub3.push('template:'+options.template);sub3.push('dir:'+options.direction);var content=xhr.responseText;content=content.replace(new RegExp('__api_key__','g'),api_key);content=content.replace(new RegExp('__country__','g'),options.country);content=content.replace(new RegExp('__sub1__','g'),'fallback_opt');content=content.replace(new RegExp('__sub2__','g'),sub2);content=content.replace(new RegExp('__sub3__','g'),sub3.join('|'));container.innerHTML=content}else{fallbackJJ()}},function(response){fallbackJJ()})}function fallbackJJ_v1(){container.innerHTML='';container.innerHTML=_mntzm_LOADING_JJ;var s=document.createElement("script");var url="//spa.spart.co/banner/jjwid.js";if(false){var proxy_url=window._api_redirect_host||"https://hublnk.com";proxy_url+="/redir?";proxy_url+="&url="+encodeURIComponent(url);proxy_url+="&api_key="+api_key;proxy_url+="&country="+options.country;proxy_url+="&sub1=fallback_jj";url=proxy_url}s.onload=function(){jjwid(api_key,container_selector,options)};s.onerrror=function(){container.innerHTML=_mntzm_LOADING_JJ_ERR};s.src=url;s.type="text/javascript";s.setAttribute("async",false);document.head.appendChild(s)}function fallbackJJ(){container.innerHTML='';container.innerHTML=_mntzm_LOADING_JJ;var s=document.createElement("script");var div_id=container_selector.replace('#','');var url="https://spa.spart.co/mui/bannerrrg.php?idf=1824&n="+div_id+"&country="+options.country+"&template="+options.template+"&publisher="+encodeURIComponent(api_key+'_'+options.subid)+"&host="+encodeURIComponent(window.location.hostname)+"&subid="+encodeURIComponent(options.subid);if(true){var proxy_url=window._api_redirect_host||"https://hublnk.com";proxy_url+="/redir?";proxy_url+="&url="+encodeURIComponent(url);proxy_url+="&api_key="+api_key;proxy_url+="&country="+options.country;proxy_url+="&sub1=fallback_jj";var sub2=api_key;var sub3=[];if(options.group_id){sub3.push('group_id:'+options.group_id)}if(options.cat_id){sub3.push('cat_id:'+options.cat_id)}if(options.query){sub3.push('query:'+encodeURIComponent(options.query))}if(window.cat_id_group){sub3.push('group_cat_id:'+cat_id_group)}if(window.cat_id_search){sub3.push('search_cat_id:'+cat_id_search)}sub3.push('template:'+options.template);sub3.push('dir:'+options.direction);proxy_url+='&sub2='+sub2;proxy_url+='&sub3='+sub3.join('|');url=proxy_url}s.src=url;s.type="text/javascript";s.setAttribute("async",false);document.head.appendChild(s)}function mntzm_load_resources(){return new Promise((resolve,reject)=>{if(window.mntzm_splide_loaded){resolve();return}if(window.mntzm_resources_called){resolve();return}window.mntzm_resources_called=true;var s=document.createElement("link");s.href=_mntzm_widget_url_prefix+'/assets/widget/style_widget.css';s.rel="stylesheet";document.body.appendChild(s);var s=document.createElement("link");s.href=_mntzm_widget_url_prefix+'/assets/vendor/splide-2.4.21/css/splide.min.css';s.rel="stylesheet";document.body.appendChild(s);var s=document.createElement("script");s.src=_mntzm_widget_url_prefix+"/assets/vendor/splide-2.4.21/js/splide.min.js";s.type="text/javascript";s.setAttribute('async',false);s.onload=function(){window.mntzm_splide_loaded=true;resolve()};s.onerror=function(message,url,line,col,errorObj){reject(message,url,line,col,errorObj)};document.head.appendChild(s)})}function show_widget_if_loaded(){if(window.mntzm_splide_loaded&&widget_item_template&&offers_loaded&&!widget_loaded){return _show_widget()}}function _show_widget(){widget_loaded=true;if(!widget_offers||widget_offers.length==0){fallbackOpt();return}var widget_html='';widget_html+='<div class="splide template-'+options.template+' direction-'+options.direction+'" style="clear:both;">';if(widget_pixels&&(widget_pixels.length>0)){widget_html+='  <div id="pixels">';for(var i=0,l=widget_pixels.length;i<l;i++){widget_html+='<img width="1px" weight="1x" src="'+widget_pixels[i]+'">'}widget_html+='  </div>'}widget_html+='  <div class="splide__track">';widget_html+='    <ul class="splide__list">';for(var i=0,l=widget_offers.length;i<l;i++){var offer=widget_offers[i];var widget_item_html=widget_item_template;var percent=0;if(offer.oldPrice&&offer.oldPrice!=offer.price){var priceDiff=(offer.oldPrice-offer.price);percent=Math.round((priceDiff/offer.oldPrice)*100)}widget_item_html=widget_item_html.replace(/%name%/g,offer.name);widget_item_html=widget_item_html.replace(/%url%/g,offer.url);widget_item_html=widget_item_html.replace(/%img%/g,offer.img);widget_item_html=widget_item_html.replace(/%merchant_domain%/g,offer.merchant_domain);widget_item_html=widget_item_html.replace(/%price%/g,offer.price);widget_item_html=widget_item_html.replace(/%currency%/g,offer.currency);widget_item_html=widget_item_html.replace(/%percent%/g,percent);widget_item_html=widget_item_html.replace(/%best%/g,offer.best?"best":"");var adchoice_link=(offer.adchoice_url)?('<a class="rc-ad-choice" href="'+offer.adchoice_url+'" target="_blank"></a>'):'';widget_item_html=widget_item_html.replace(/<!--%adchoice_link%-->/g,adchoice_link);widget_html+=widget_item_html}widget_html+='    </ul>';widget_html+='  </div>';widget_html+='</div>';container.innerHTML=widget_html;if(options.country!='fr'&&options.country!=''){var offer_texts={fr:"Voir l'offre",uk:"See offer",us:"See offer",br:"Veja oferta",it:"Guarda offerta",es:"Ver la oferta",de:"Siehe Angebot",};if(offer_texts[options.country]){var offer_txt=offer_texts[options.country];var buttons=document.querySelectorAll('.rc-buy-button');for(p in buttons){buttons[p].innerText=offer_txt}}}var splide_options={type:'loop',pagination:false,autoplay:true,lazyLoad:true,rewind:true,autoWidth:true,autoHeight:true,focus:'center',padding:{right:'3rem',left:'3rem',},};if(options.direction=='ttb'){splide_options.direction=options.direction;splide_options.height=600;splide_options.autoWidth=false;splide_options.padding={right:0,left:0,top:'0rem',bottom:'0rem',}}new Splide(container_selector+" > .splide",splide_options).mount();document.querySelector(container_selector+" .splide__list").addEventListener("click",function(event){});if(options.country=='fr'&&options.template=='default'&&options.direction=='ltr'&&cat_fullname){var parts=cat_fullname.split(' > ');var cat_name=parts[parts.length-1];var suffix="";if(suffix==""&&x_results>0&&cat_name!=""){suffix=cat_name}if(suffix==""&&options.query!=""){suffix=options.query}if(suffix==""){suffix="offres du moment"}var tmp='';var title_html=getHeaderHTML('&#x1F6D2; Top <b>'+suffix+'</b>'+tmp);document.querySelector(container_selector).insertAdjacentHTML('afterbegin',title_html)}else if(widget_pixels&&options.template=='default'){var title_html=getHeaderHTML('&#x1F6D2; Selection shopping');document.querySelector(container_selector).insertAdjacentHTML('afterbegin',title_html)}}function getHeaderHTML(title){const link=(options.country=='fr')?'https://optimhub.com/index-fr.html':'https://optimhub.com/';let content='<div style="float:left; text-transform: uppercase;">'+title+'</div><div style="float:right;"><a href="'+link+'" style="color:#2eb7c9; padding:2px; background-color:white;" target="_blank"><i>By Optimhub</i></a></div><div style="clear:both"></div>';return'<div style="height:20px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; opacity:.5;">'+content+'</div>'}function getOffersApiUrl(){var api_country_endpoint=window._api_country_host?window._api_country_host.replace('-COUNTRY','-'+options.country):('https://api.'+options.country+'.publishub.optimhub.com');var api_endpoint=api_country_endpoint;var url=api_endpoint+"/Offers.json?api_key="+encodeURIComponent(api_key);url+="&nb="+options.limit;url+="&query="+encodeURIComponent(options.query);url+="&source=widget";url+="&widget_host="+encodeURIComponent(window.location.hostname);url+="&widget_path="+encodeURIComponent(window.location.pathname);if(options.ean){url+="&ean="+encodeURIComponent(options.ean)}if(options.country){url+="&country="+encodeURIComponent(options.country)}if(options.best){url+="&best="+options.best}if(options.cat_id){url+="&cat_id="+options.cat_id}if(options.group_id){url+="&group_id="+options.group_id}if(options.platform){url+="&platform="+options.platform}if(options.merchant){url+="&merchant="+options.merchant}if(options.subid){url+="&subid="+encodeURIComponent(options.subid)}if(options.strict){url+="&strict="+options.strict}if(options.no_cache){url+="&no_cache="+options.no_cache}return url}function _getWidgetFormat(_template,_direction){switch(_direction+'-'+_template){case'ltr-default':return'responsive';case'ltr-leaderboard_xl':return'728x90';case'ttb-skyscraper':return'120x600';case'ltr-300x250':return'300x250';case'ltr-970x250':return'970x250';case'ttb-default':return'300x600';case'ltr-320x100_xl':return'320x100'}return'300x250'}function loadWidgetResources(){mntzm_load_resources().then(function(){console.log(container_selector,'loadWidgetResources(1) is calling show_widget_if_loaded');show_widget_if_loaded()}).catch(function(message,url,line,col,errorObj){console.log('mntzm_load_resources error',message,url,line,col,errorObj)});var url=_mntzm_widget_url_prefix+"/assets/widget/templates/"+encodeURIComponent(options.template)+".html";_ajaxPromise(url).then(function(xhr){widget_item_template=xhr.responseText;console.log(container_selector,'loadWidgetResources(2) is calling show_widget_if_loaded');show_widget_if_loaded()}).catch(function(xhr){console.log('mntzm_load_template error',url,xhr.status)})}function loadOffers(skipLoadResources){container.innerHTML='';container.innerHTML=_mntzm_LOADING_OFFERS1;if(!skipLoadResources){loadWidgetResources()}var api_url=getOffersApiUrl();_ajaxPromise(api_url).then(function(xhr){call_id=(xhr.getAllResponseHeaders().indexOf("x-callid")>=0)?xhr.getResponseHeader("x-callid"):null;cat_id_search=(xhr.getAllResponseHeaders().indexOf("x-catid-search")>=0)?xhr.getResponseHeader("x-catid-search"):'';cat_id_group=(xhr.getAllResponseHeaders().indexOf("x-catid-from-group")>=0)?xhr.getResponseHeader("x-catid-from-group"):'';cat_fullname=(xhr.getAllResponseHeaders().indexOf("x-catname-search")>=0)?xhr.getResponseHeader("x-catname-search"):'';x_results=(xhr.getAllResponseHeaders().indexOf("x-results")>=0)?xhr.getResponseHeader("x-results"):0;widget_offers=JSON.parse(xhr.responseText);offers_loaded=true;container.innerHTML=_mntzm_LOADING_OFFERS2;console.log(container_selector,'loadOffers(1) is calling show_widget_if_loaded');show_widget_if_loaded()}).catch(function(xhr){x_results=0;widget_offers=[];offers_loaded=true;container.innerHTML=_mntzm_LOADING_OFFERS3;console.log(container_selector,'loadOffers(2) is calling show_widget_if_loaded');show_widget_if_loaded()})}function loadCondigo(){container.innerHTML='';container.innerHTML=_mntzm_LOADING_AD;loadWidgetResources();return cdglbInit(options).then(meta=>{if(meta.data.html!==undefined){container.innerHTML=meta.data.html;console.log(container_selector,'loadCondigo(1) displaying html')}else{widget_offers=meta.data.items;widget_pixels=meta.data.pixels;x_results=meta.data.length;offers_loaded=true;if(false){widget_offers=widget_offers.map(function(o){var proxy_url=window._api_redirect_host||"https://hublnk.com";proxy_url+="/redir?";proxy_url+="&api_key="+api_key;proxy_url+="&country="+options.country;proxy_url+="&sub1=fallback_cdg_click";proxy_url+="&url="+encodeURIComponent(o.url);o.url=proxy_url;return o})}console.log(container_selector,'loadCondigo(1) is calling show_widget_if_loaded');show_widget_if_loaded()}}).catch(function(e){widget_loaded=false;console.log(container_selector,'error ?',e);var bypass=_getGlobalBypassRedirect({jj:1,cdg:1});if(bypass){return bypass()}loadOffers(true)})}function cdglbInit(options){function matching(databag,callback){let nonce=(new Date())*(999999*Math.random()).toFixed();window["cb_handledata_matching_"+nonce]=function(data){if(data){window["cb_handledata_matching_"+nonce]=undefined;if('function'==typeof callback){callback(data)}}};let rawQuery=[];for(const[key,value]of Object.entries(databag)){rawQuery.push(`${key}=${encodeURIComponent(value)}`)}let s=document.createElement('script');s.type='text/javascript';s.src="https://gum.criteo.com/sync?c=388&r=2&j=cb_handledata_matching_"+nonce+"&"+rawQuery.join("&");let h=document.getElementsByTagName('script')[0];h.parentNode.insertBefore(s,h)}function getOffers(data,callback,error){let nonce=(new Date())*(999999*Math.random()).toFixed();data.domain=document.location.hostname;data.page=document.location.toString();let appId;let apiHost;if(_isRwm()){appId="c60ivu5g9re1g45dqrr0";apiHost='optimhub.cdglb.com'}else if(_isTmz()){appId="c6bmgnke1rb7o76gnur0";apiHost='tmz.cdglb.com'}else if(_isHito()){appId="c8m95tuohn4hsnlhoei0";apiHost='hitopic.cdglb.com'}else{return error(null)}window["cb_handledata_offers_"+nonce]=function(data){window["cb_handledata_offers_"+nonce]=undefined;if(data.status==200){if('function'==typeof callback){console.log(container_selector,'getOffers ok');callback(data)}}else{if('function'==typeof callback){console.log(container_selector,'getOffers error',data);error(data)}}};let rawQuery=[];for(const[key,value]of Object.entries(data)){rawQuery.push(`${key}=${encodeURIComponent(value)}`)}let apiRoot="https://"+apiHost+"/v0/ssp/publishers/"+appId+"/feeds/Offers.json?callback=cb_handledata_offers_"+nonce+"&";var s=document.createElement('script');s.type='text/javascript';s.src=apiRoot+rawQuery.join("&");var h=document.getElementsByTagName('script')[0];h.parentNode.insertBefore(s,h);console.log(container_selector,'getOffers calling condigo',apiRoot)}function doMatching(options,tcData,onData,onError){if(!tcData){console.log(container_selector,'empty consent (2)');onError();return}let consent=typeof tcData.tcString==="undefined"?"":tcData.tcString;matching({"gdpr":tcData.gdprApplies?"1":"0","gdpr_consent":consent,"gdpr_pd":0,"us_privacy":tcData.gdprApplies?"0":"1",},function(data){options.status=data.status;options.user_id=data.userid;options.consent=consent;console.log(container_selector,'calling getOffers');getOffers(options,onData,onError)})}function getTcData(resolve){if(top.__tcfapi){top.__tcfapi('addEventListener',2,function(tcData,success){if(success){if(tcData.eventStatus==='useractioncomplete'||tcData.eventStatus==='tcloaded'){resolve(tcData)}}})}else{const r={eventStatus:"tcloaded",gdprApplies:true,tcString:function(name){const value=`;${document.cookie}`;const parts=value.split(`;${name}=`);if(parts.length===2){const v=parts.pop().split(';').shift();return v}}("euconsent-v2"),};console.log('r:',r);resolve(r)}}async function waitForCmp(){return new Promise(resolve=>getTcData(resolve))}async function Do(options){console.log("CMP: Waiting for...");const tcData=await waitForCmp();console.log("CMP: OK (CMP UP or Not)");return new Promise((resolve,reject)=>{doMatching(options,tcData,resolve,reject)})}return Do(options)}window.setTimeout(function(){if(container.innerHTML.indexOf('Loading')===0){container.innerHTML=''}},2000);var bypass=_getGlobalBypassRedirect();if(bypass){return bypass()}loadOffers()}