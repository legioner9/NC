$(function(){var e={markdown_line:function(){$(".markdown_views pre").addClass("prettyprint"),$("pre.prettyprint code").each(function(){var t=$(this).text().split("\n").length+($(this).hasClass("hljs")?1:0);e=$("<ul/>").addClass("pre-numbering").hide();for($(this).addClass("has-numbering").parent().append(e),i=1;i<t;i++)
e.append($("<li/>").text(i));e.fadeIn(1700)}),$(".pre-numbering li").css("color","#999"),setTimeout(function(){$(".math").each(function(t,e){$(this).find("span").last().css("color","#fff")})}),setTimeout(function(){$(".toc a[target='_blank']").attr("target",""),$("a.reversefootnote,a.footnote").attr("target","")},500)},html_line:function(){function t(){$(".CopyToClipboard").each(function(){var t=new ZeroClipboard.Client;t.setHandCursor(!0),t.addEventListener("load",function(t){}),t.addEventListener("mouseOver",function(t){var e=t.movie.parentNode.parentNode.parentNode.parentNode.nextSibling.innerHTML;e=e.replace(/&lt;/g,"<").replace(/&gt;/g,">").replace(/&amp;/g,"&"),t.setText(e)}),t.addEventListener("complete",function(t,e){alert("Код был скопирован в ваш буфер обмена.")}),t.glue(this,this.parentNode)})}
$(".article_content pre").each(function(){var t=$(this);try{if(t.attr("class").indexOf("brush:")!=-1){var e=t.attr("class").split(";")[0].split(":")[1];t.attr("name","code"),t.attr("class",e)}
t.attr("class")&&t.attr("name","code")}catch(i){console.log("Кнопка Вставить код неиспользуемого редактора используется для вставки кода или исходный код, сгенерированный редактором, уничтожен")}}),$(".article_content textarea[name=code]").each(function(){var t=$(this);t.attr("class").indexOf(":")!=-1&&t.attr("class",t.attr("class").split(":")[0])}),dp.SyntaxHighlighter.HighlightAll("code"),$(".highlighter").addClass("dp-highlighter"),window.clipboardData||setTimeout(t,1e3)}};e.markdown_line();})