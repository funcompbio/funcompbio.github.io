---
layout: page
title: Sessions
permalink: /sessions/
---

Here you can find links to the training material of each FCB session, which can be either lectures, seminars or practicals. Clicking the title of the session will go to the web page of the session, by default. The bottom right icons may have additional material for that session such as another web page (<i class="fab fa-html5"></i>), a Github directory (<i class="fab fa-github"></i>), an R or R-markdown document (<i class="fab fa-r-project"></i>), or a PDF file (<i class="fas fa-file-pdf"></i>).

<ul id="archive">
{% for sessions in site.data.sessions %}
      <li class="archiveposturl">
        <span><a href="{{ site.baseurl }}/{{ sessions.dirname }}">{{ sessions.title }}</a></span><br>
<span class = "postlower">{{ sessions.desc }}</span>
<strong style="font-size:100%; font-family: 'Titillium Web', sans-serif; float:right; padding-right: .5em">
{% if sessions.slides %}
  <a href="{{ site.url }}/{{ sessions.dirname }}/{{ sessions.slides }}.html"><i class="fab fa-html5"></i></a>&nbsp;&nbsp;
{% endif %}
{% if sessions.github %}
<a href="{{ sessions.github }}"><i class="fab fa-github"></i></a>&nbsp;&nbsp;
{% endif %}
{% if sessions.rmd %}
<a href="{{ sessions.rmd }}"><i class="fab fa-r-project"></i></a>&nbsp;&nbsp;
{% endif %}
{% if sessions.python %}
<a href="{{ sessions.python }}"><i class="fab fa-python"></i></a>&nbsp;&nbsp;
{% endif %}
{% if sessions.pdf %}
<a href="{{ site.url }}/{{ sessions.dirname }}/{{ sessions.filename }}.pdf"><i class="fas fa-file-pdf"></i></a>
{% endif %}
</strong> 
      </li>
{% endfor %}
</ul>
