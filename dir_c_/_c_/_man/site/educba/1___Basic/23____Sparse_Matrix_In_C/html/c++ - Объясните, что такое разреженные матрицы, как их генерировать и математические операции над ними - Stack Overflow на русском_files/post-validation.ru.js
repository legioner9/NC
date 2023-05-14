(()=>{var e={p:""};(()=>{"use strict";e.p=document.getElementById("webpack-public-path").innerText+"Js/"})(),StackExchange=window.StackExchange=window.StackExchange||{},StackOverflow=window.StackOverflow=window.StackOverflow||{},StackExchange.postValidation=function(){var e=$("body").hasClass("js-ask-page-v2"),t=$("body").hasClass("js-staging-ground-wizard"),n="Title",s="Body",a="Tags",i="Mentions",r="EditComment",o="Excerpt",l="Email",c="General";function u(e,t,n){var s={Title:".js-post-title-field",Body:".js-post-body-field[data-post-type-id="+t+"]",Tags:".js-post-tags-field",Mentions:".js-post-mentions-field",EditComment:".js-post-edit-comment-field",Excerpt:".js-post-excerpt-field",Email:".js-post-email-field",ArticleType:".js-article-type-field"};return s[n]?e.find(s[n]):$()}function d(e,t,n){var s=u(e,t,n);return n===a||n===i?e.find(".js-tag-editor").filter((function(){return $(this).data("target-field")===s.get(0)})):s}var g=[];function f(t,i,c,u){var d=t.find('input[type="submit"]:visible, button[type="submit"]:visible'),g=d.length&&d.is(":enabled");g&&d.prop("disabled",!0),function(t,s,a){m(t,s,a,n,(function(t,n,s){var a=t.val(),i=$.trim(a).length,r=t.data("min-length"),o=t.data("max-length");0!==i||e?r&&i<r?n(__tr(["Заголовок должен содержать как минимум $minLength$ символ.","Заголовок не может быть короче $minLength$ символов.","Заголовок не может быть короче $minLength$ символов."], {minLength: r}, "ru", ["minLength"])):o&&i>o?n(__tr(["Заголовок не может превышать $maxLength$ символ.","Заголовок не может быть длиннее $maxLength$ символов.","Заголовок не может быть длиннее $maxLength$ символов."], {maxLength: o}, "ru", ["maxLength"])):s({type:"POST",url:"/posts/validate-title",data:{title:a,fkey:StackExchange.options.user.fkey}}):n()}))}(t,i,c),function(t,n,a,i){m(t,n,a,s,(function(t,s,a){var r=t.val(),o=$.trim(r).length,l=t.data("min-length");0!==o||e?5!==n?1!==n&&2!==n||a({type:"POST",url:"/posts/validate-body",data:{body:r,oldBody:t.prop("defaultValue"),isQuestion:1===n,isSuggestedEdit:i,fkey:StackExchange.options.user.fkey}}):l&&o<l?s(__tr(["Описание должно быть как минимум $minLength$ символов. Вы ввели $actual$."], {minLength: l,actual: o}, "ru", [])):s():s()}))}(t,i,c,u),function(e,t,n){m(e,t,n,r,(function(s,a,i){var r=s.val(),o=$.trim(r).length,l=s.data("min-length"),c=s.data("max-length");0!==o?l&&o<l?a(__tr(["Комментарий к правке должен содержать как минимум $minLength$ символ.","Описание правки должно содержать как минимум $minLength$ символа.","Описание правки должно содержать как минимум $minLength$ символов."], {minLength: l}, "ru", ["minLength"])):c&&o>c?a(__tr(["Комментарий к правке не может превышать $maxLength$ символ.","Описание правки не может превышать $maxLength$ символа.","Описание правки не может превышать $maxLength$ символов."], {maxLength: c}, "ru", ["maxLength"])):v(e,t,n)||a():a()}))}(t,i,c),function(e,t,n){m(e,t,n,o,(function(e,t,n){var s=e.val(),a=$.trim(s).length,i=e.data("min-length"),r=e.data("max-length");0!==a?i&&a<i?t(__tr(["Краткое описание должно содержать минимум $minLength$ символов; вы ввели $actual$."], {minLength: i,actual: a}, "ru", [])):r&&a>r?t(__tr(["Краткое описание не может превышать $maxLength$ символов; вы ввели $actual$."], {maxLength: r,actual: a}, "ru", [])):t():t()}))}(t,i,c),function(e,t,n){m(e,t,n,l,(function(e,t,n){var s=e.val(),a=$.trim(s);0!==a.length?StackExchange.helpers.isEmailAddress(a)?t():t(__tr(["Неверный адрес электронной почты."], undefined, "ru", [])):t()}))}(t,i,c),E(t,i,(function(){!function(t,n,s){m(t,n,s,a,(function(t,n,s,a){var i=t.val();0!==$.trim(i).length||e?s({type:"POST",url:"/posts/validate-tags",data:{tags:i,oldTags:t.prop("defaultValue"),fkey:StackExchange.options.user.fkey,postTypeId:a},success:function(e){var n=t.closest(".js-post-form").find(".js-warned-tags-field");if(n.length){var s=n.val(),a=n.data("warned-tags")||[],i=((e.source||{}).Tags||[]).filter((function(e){return e&&-1===a.indexOf(e)}));i.length>0&&StackExchange.using("gps",(function(){i.forEach((function(e){StackExchange.gps.track("tag_warning.show",{tag:e},!0),s+=" "+e,a.push(e)})),n.val($.trim(s)).data("warned-tags",a),StackExchange.gps.sendPending()}))}}}):n()}))}(t,i,c),g&&d.prop("disabled",!1)}))}function b(e,t){e.find('input[type="submit"]:visible, button[type="submit"]').removeClass("is-loading"),t||(StackExchange.helpers.enableSubmitButton(e),StackExchange.navPrevention&&StackExchange.navPrevention.start())}function p(e,t,n,s,a){$.ajax({type:"POST",dataType:"json",data:e.serialize(),url:e.attr("action"),success:a,error:function(){var s=y(n,0);P(e,t,n,{General:[$("<span/>").text(s).html()]},0)},complete:function(){b(e,s)}})}function h(){for(var e=0;e<g.length;e++)clearTimeout(g[e]);g=[]}function m(t,n,s,a,i){u(t,n,a).blur((function(){var r=this,o=$(this),l=function(e){S(t,n,s,a,e)},c=function(e){return k(e,t,n,s,[a])};g.push(setTimeout((function(){var t=StackExchange.stacksValidation.handlerFor(o);t&&!e&&t.clear(),i.call(r,o,l,c,n)}),250))}))}function v(e,t,n){return"[Edit removed during grace period]"===$.trim(u(e,t,r).val())&&(S(e,t,n,r,__tr(["Данный комментарий относится к системным. Пожалуйста, выберите подходящий комментарий из списка."], undefined, "ru", [])),!0)}function y(e,t){if(t>0)switch(e){case"question":return __tr(["Отправить ваш вопрос не удалось. Пожалуйста, проверьте ошибки.","Не удалось отправить ваш вопрос. Проверьте ошибки.","Не удалось отправить ваш вопрос. Проверьте ошибки. "], {specificErrorCount: t}, "ru", ["specificErrorCount"]);case"answer":return __tr(["Отправить ваш ответ не удалось. Пожалуйста, проверьте его.","Не удалось отправить ваш ответ. Проверьте ошибки.","Не удалось отправить ваш ответ. Проверьте ошибки."], {specificErrorCount: t}, "ru", ["specificErrorCount"]);case"edit":return __tr(["Внести вашу правку не удалось. Пожалуйста, проверьте ошибки.","Не удалось отправить вашу правку. Проверьте ошибки. ","Не удалось отправить вашу правку. Проверьте ошибки. "], {specificErrorCount: t}, "ru", ["specificErrorCount"]);case"tags":return __tr(["Отправить ваши метки не удалось. Пожалуйста, проверьте ошибки.","Не удалось отправить ваши метки. Проверьте ошибки.","Не удалось отправить ваши метки. Проверьте ошибки."], {specificErrorCount: t}, "ru", ["specificErrorCount"]);case"article":return __tr(["Your article couldn't be submitted. Please see the errors above.","Your article couldn't be submitted. Please see the errors above.","Your article couldn't be submitted. Please see the errors above."], {specificErrorCount: t}, "ru", ["specificErrorCount"]);default:return __tr(["Отправить ваше сообщение не удалось. Пожалуйста, проверьте ошибки.","Ваше сообщение не удалось отправить. См. ошибки выше.","Ваше сообщение не удалось отправить. См. ошибки выше."], {specificErrorCount: t}, "ru", ["specificErrorCount"])}else switch(e){case"question":return __tr(["Во время публикации вопроса произошла ошибка."], undefined, "ru", []);case"answer":return __tr(["При отправке ответа произошла ошибка."], undefined, "ru", []);case"edit":return __tr(["При отправке изменений произошла ошибка."], undefined, "ru", []);case"tags":return __tr(["При отправке меток произошла ошибка."], undefined, "ru", []);case"article":return __tr(["An error occurred submitting the article."], undefined, "ru", []);default:return __tr(["При отправке сообщения произошла ошибка."], undefined, "ru", [])}}function P(e,t,n,s,a){var i=e.find(".js-general-error").text("").removeClass("d-none");z(e,i,s,null,c,t,n)||(a>0?i.text(y(n,a)):i.addClass("d-none"))}function w(e){var t=$(".js-post-review-summary").closest(".js-post-review-summary-container");if(t.length>0)t.filter(":visible").scrollIntoView();else{var n,s;j()&&($("#sidebar").animate({opacity:.4},500),n=setInterval((function(){j()||($("#sidebar").animate({opacity:1},500),clearInterval(n))}),500)),e.find(".validation-error, .js-stacks-validation.has-error").each((function(){var e=$(this).offset().top;(!s||e<s)&&(s=e)}));var a=function(){for(var t=0;t<3;t++)e.find(".message").animate({left:"+=5px"},100).animate({left:"-=5px"},100)};if(s){var i=$(".review-bar").length;s=Math.max(0,s-(i?125:30)),$("html, body").animate({scrollTop:s},a)}else a()}}function x(e,t,c,u,d){u&&E(e,t,(function(){var g=A(e,t,c,[n,s,a,i,r,o,l,"ArticleType"],u,d).length;P(e,t,c,u,g),w(e)}))}function E(e,t,n){var s=function(){1!==t||d(e,t,a).length?n():setTimeout(s,250)};s()}function k(e,t,n,s,a,i){return $.ajax(e).then((function(e){return i?$.when(i()).then((function(){return e})):e})).done((function(e){A(t,n,s,a,e.errors,e.warnings)})).fail((function(){A(t,n,s,a,{},{})}))}function A(e,t,n,s,a,i){for(var r=[],o=0;o<s.length;o++){var l=s[o];z(e,d(e,t,l),a,i,l,t,n)&&r.push(l)}return r}function S(e,t,n,s,a){T(e,d(e,t,s),a?[$("<span/>").text(a).html()]:[],[],s,t,n)}function z(e,t,n,s,a,i,r){return T(e,t,n[a]||[],(s||{})[a]||[],a,i,r)}function T(t,n,s,a,i,r,o){var l=StackExchange.stacksValidation.handlerFor(n);return l?function(t,n,s,a,i){t.clear("error"),a.forEach((function(e){t.add("error",e)})),"edit"===s||"question"===s&&e||(t.clear("warning"),i.forEach((function(e){t.add("warning",e)})))}(l,0,o,s,a):function(e,t,n){e&&e.length&&(0===n.length||1===n.length&&""===n[0]||!$("html").has(e).length?function(e){var t=e.data("error-popup");t&&t.is(":visible")&&t.fadeOutAndRemove(),e.removeClass("validation-error"),e.removeData("error-popup"),e.removeData("error-message")}(e):function(e,t,n){var s=1===t.length?t[0]:"<ul><li>"+t.join("</li><li>")+"</li></ul>",a=e.data("error-popup");if(a&&a.is(":visible")){if(e.data("error-message")===s)return void(a.animateOffsetTop&&a.animateOffsetTop(0));a.fadeOutAndRemove()}var i=StackExchange.helpers.showMessage(e,s,n);i.find("a").attr("target","_blank"),i.click(h),e.addClass("validation-error").data("error-popup",i).data("error-message",s)}(e,n,function(e,t){var n=$("#sidebar, .sidebar").first().width()||270,s="lg"===StackExchange.responsive.currentRange();return e===c?{position:"inline",css:{display:"inline-block","margin-bottom":"10px"},closeOthers:!1,dismissable:!1,type:t}:{position:{my:s?"left top":"top center",at:s?"right center":"bottom center"},css:{"max-width":n,"min-width":n},closeOthers:!1,type:t}}(t,"error")))}(n,i,s),t.find(".validation-error, .js-stacks-validation.has-error").length||t.find(".js-general-error").text(""),n.trigger("post:validated-field",[{errors:s,warnings:a,field:i,postTypeId:r,formType:o}]),s.length>0}function j(){var e=!1,t=$("#sidebar, .sidebar").first();if(!t.length)return!1;var n=t.offset().left;return $(".message").each((function(){var t=$(this);if(t.offset().left+t.outerWidth()>n)return e=!0,!1})),e}return{initOnBlur:f,initOnBlurAndSubmit:function(e,t,n,s,i){var r;f(e,t,n,s);var o=function(s){if(e.trigger("post:submit-completed",[{formType:n,postTypeId:t,response:s}]),s.success)if(i)i(s);else{var a=window.location.href.split("#")[0],l=s.redirectTo.split("#")[0];0===l.indexOf("/")&&(l=window.location.protocol+"//"+window.location.hostname+l),window.onbeforeunload=null,r=!0,window.location=s.redirectTo,a.toLowerCase()===l.toLowerCase()&&window.location.reload(!0)}else s.captchaHtml?StackExchange.nocaptcha.init(s.captchaHtml,o):s.errors?(e.find(".js-post-prior-attempt-count").val((function(e,t){return(+t+1||0).toString()})),x(e,t,n,s.errors,s.warnings)):P(e,t,n,{General:[$("<span/>").text(s.message).html()]},0)};e.submit((function(){if(e.find(".js-post-answer-while-asking-checkbox").is(":checked"))return!0;if(v(e,t,n))return StackExchange.helpers.enableSubmitButton(e),!1;if(h(),StackExchange.navPrevention&&StackExchange.navPrevention.stop(),e.find('input[type="submit"]:visible, button[type="submit"]').addClass("is-loading"),StackExchange.helpers.disableSubmitButton(e),StackExchange.options.site.enableNewTagCreationWarning){var s=u(e,t,a),i=s.prop("defaultValue");if(s.val()!==i)return $.ajax({type:"GET",url:"/posts/new-tags-warning",dataType:"json",data:{tags:s.val()},success:function(s){if(s.showWarning){var i={closeOthers:!0,shown:function(){$(".js-confirm-tag-creation").on("click",(function(s){return StackExchange.helpers.closePopups(),p(e,t,n,r,o),s.preventDefault(),!1}))},dismissing:function(){b(e,r)},returnElements:d(e,t,a).find("input:visible")};StackExchange.helpers.showModal($(s.html).elementNodesOnly(),i),StackExchange.helpers.bindMovablePopups()}else p(e,t,n,r,o)}}),!1}return setTimeout((function(){p(e,t,n,r,o)}),0),!1}))},showErrorsAfterSubmission:x,validatePostFields:function(e,i,r,o,l){if(1===i)return k({type:"POST",url:"/posts/validate-question",data:{title:u(e,i,n).val(),body:u(e,i,s).val(),tags:u(e,i,a).val(),fkey:StackExchange.options.user.fkey,isAskWizard:t}},e,i,r,[n,s,a],l).promise();if(2===i)return k({type:"POST",url:"/posts/validate-body",data:{body:u(e,i,s).val(),oldBody:u(e,i,s).prop("defaultValue"),isQuestion:!1,isSuggestedEdit:o||!1,fkey:StackExchange.options.user.fkey}},e,i,r,[s],l).promise();var c=$.Deferred();return c.reject(),c.promise()},scrollToErrors:w}}()})();