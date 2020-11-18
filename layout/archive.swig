{% extends './includes/base.swig' %}

{% block extra_style %}
    {% if theme.gitalk.enable %}
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css">
    {% endif %}
    <link rel='stylesheet' href="{{ url_for('./css/dracula.css') }}">
{% endblock %}

{% block content %}
    <div class="dis_flex_center al_lightbox_cnt al_full_cover">
        <img class="al_lightbox_img"/>
    </div>
    <div class="al_page_background dis_flex_center al_full_cover"></div>
    <div class="al_page_container">
        <div class="al_pos_ab al_fake_background"></div>
        <div class="al_main_container al_shadow al_main_page_container">
            <article class="al_article">
            
            
            
           




			<header>
                
                <div class="al_page_info dis_flex">
                <!-- 
                    	<div class="al_page_content_info">
                            {{ config.title  }}
                        </div>
                        
                        -->
                        
<!-- 
                        {% if wordcount %}
                            <div class="al_page_content_info">
                                {{ wordcount(page.content) }} words
                            </div>
                        {% endif %}

                        {% if min2read %}
                            <div class="al_page_content_info">
                                {{ min2read(page.content) }} minutes read
                            </div>
                        {% endif %}
                          
                        <span class="tags"></span> 
-->             
                        
                        
                    </div>
<!--
                    <h1 class="al_page_title">
                        {{ page.title|default('No Title') }} 
                    </h1>
                    <div class="al_page_content_info_">
                        创建时间: {{ page.date|date('Y-m-d') }}  | 跟新时间：{{page.updated|date('Y-m-d') }}
                    </div>
              -->         
                </header>

<!-- 
导航栏
                {% if toc(page.content) %}
                    <div class="al_page_content_outline">
                        {{ toc(page.content,{list_number:false}) }}
                    </div>
                {% endif %}


				{# Page Content #}
                <section id="post-body">
                    {{ page.content }}
                </section>
                -->
                
                
{% for item in page.posts %}
 <div class="al_index_post_excerpt_cnt_ " >
{{ item.date|date('Y-m-d') }} | [{{ item.type }}] |
 <a href="{{ url_for(item.link || item.path) }}">
{{ item.title|default('No Title') }} - 

{% set dur = item.duration %}
{% set mins = Math.floor(dur / 60) %}
{% set sec = dur % 60 %}
{% if mins >= 60 %}
	{% set hour = Math.floor(mins / 60) %}
	{% set mins = mins % 60 %}
	{{ hour }}:{{ mins }}:{{sec}}
{% else %}
	{{ mins }}:{{sec}}
{% endif %}
                                	
</a>

<!-- 
<div class="al_index_post_read_time" style="width:50px">{{ item.duration }} </div>
 -->
</div>
{% endfor %}
  


              
        </div>
    </div>

{% endblock %}
