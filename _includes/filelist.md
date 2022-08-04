{% assign filepath = include.filepath %}

{% assign files = site.static_files | where_exp: 'item','item.path contains filepath' %}
{% assign pdffiles = files | where: 'extname','.pdf' %}
{% assign pptxfiles = files | where: 'extname','.pptx' %}
{% assign zipfiles = files | where: 'extname','.zip' %}
{% assign tgzfiles = files | where: 'extname','.tgz' %}

{% for pdffile in pdffiles %}

  {% comment %} Make title look better {% endcomment %}
  {% assign filewords = pdffile.basename | split: '_' %}
  {% capture prettyname %}
{{ filewords | first | capitalize }}
    {% for word in filewords offset: 1 %}
 {{ word }}
    {% endfor %}
  {% endcapture %}

  {% comment %} Create base output {% endcomment %}
  {% capture pdfstr %} * [{{ prettyname | strip_newlines }}]({{ pdffile.path | relative_url }}){% endcapture %}

  {% comment %} Find any PPTX files that match this PDF and create output for them {% endcomment %}
  {% assign match_pptxfiles = pptxfiles | where_exp: 'item','item.basename == pdffile.basename' %}
  {% if match_pptxfiles.size == 1 %}
    {% capture pptxstr %}([pptx]({{match_pptxfiles.first.path | relative_url }})){% endcapture %}
  {% else %}
    {% assign pptxstr = '' %}
  {% endif %}

  {% comment %} Find any ZIP files that match this PDF and create output for them {% endcomment %}
  {% assign match_zipfiles = zipfiles | where_exp: 'item','item.basename == pdffile.basename' %}
  {% if match_zipfiles.size == 1 %}
    {% capture zipstr %}([zip]({{match_zipfiles.first.path | relative_url }})){% endcapture %}
  {% else %}
    {% assign zipstr = '' %}
  {% endif %}

  {% comment %} Find any TGZ files that match this PDF and create output for them {% endcomment %}
  {% assign match_tgzfiles = tgzfiles | where_exp: 'item','item.basename == pdffile.basename' %}
  {% if match_tgzfiles.size == 1 %}
    {% capture tgzstr %}([tgz]({{match_tgzfiles.first.path | relative_url }})){% endcapture %}
  {% else %}
    {% assign tgzstr = '' %}
  {% endif %}

  {% comment %} Actually output the result {% endcomment %}
  {{ pdfstr | append: pptxstr | append: zipstr | append: tgzstr }}

{% endfor %}

