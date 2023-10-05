---
layout: single
show_date: false
read_time: false
title: "Cheat Sheets"
permalink: /cheatsheets/
---

## Git

<ol>{% for collection in site.git %}
<li><a href="{{ collection.url }}">{{ collection.title }}</a></li>
{% endfor %}</ol>

---

## Docker

<ol>{% for collection in site.docker %}
<li><a href="{{ collection.url }}">{{ collection.title }}</a></li>
{% endfor %}</ol>

---

## Linux

<ol>{% for collection in site.linux %}
<li><a href="{{ collection.url }}">{{ collection.title }}</a></li>
{% endfor %}</ol>

---
