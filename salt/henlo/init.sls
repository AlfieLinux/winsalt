{% if "Windows" == grains["os"] %}
{%      set hellofile = "C:\henlothomas.txt" %}
{% else %}
{%      set hellofile = "/tmp/henlothomas.txt" %}
{% endif %}

{{ hellofile }}:
 file.managed:
 - source: salt://henlo/henlothomas.txt
