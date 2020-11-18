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
            
            <!-- 上下页 -->
             {# Navigate Element #}
            <nav class="dis_flex al_post_nav al_post_nav_top">
                <a class="al_post_nav_item dis_flex_acenter" href="{{ url_for(page.prev.path) }}">
                    {% if page.prev %}
                        <svg class="al_arrow">
                            <use xmlns="http://www.w3.org/2000/svg" xlink:href="/assets/svg_icons.svg#svg-arrow-left"></use>
                        </svg>
                        <span class="al_text_ellipsis al_post_nav_desc">{{ page.prev.title }}</span>
                    {% endif %}
                </a>
                <a class="al_post_nav_item dis_flex_acenter" href="{{ url_for(page.next.path) }}">
                    {% if page.next %}
                        <span class="al_text_ellipsis al_post_nav_desc">{{ page.next.title }}</span>
                        <svg class="al_arrow ">
                            <use xmlns="http://www.w3.org/2000/svg" xlink:href="/assets/svg_icons.svg#svg-arrow-right"></use>
                        </svg>
                    {% endif %}
                </a>
            </nav>
            
            <!-- 播放器 
            <div id="aplayer-JXQHXDcL" 
            class="aplayer aplayer-tag-marker meting-tag-marker"
	         data-id="002j785c33YQHT" 
	         data-server="tencent" 
	         data-type="song" 
	         data-mode="circulation" 
	         data-autoplay="false" 
	         data-mutex="true" 
	         data-listmaxheight="340px" 
	         data-preload="auto" 
	         data-theme="#ad7a86"
    ></div>-->
    
<div id="aplayer"></div>
<script>
	const ap = new APlayer(
	{
		container : document.getElementById('aplayer'),
		loop: 'none',
		audio : [ {
			artist: "{{ page.type  }} | {{page.date|date('Y-m-d')}}",
			name : "{{ page.title|default('No Title') }}",
			url : '{{ page.media }}',
			cover : '{{ page.image }}?imageView2/1/w/128/h/128'
		} ]
	});
</script>




			<header>
                
                <div class="al_page_info dis_flex">
                    	<div class="al_page_content_info_">
                            {{ page.title  }}
                        </div>
                    	<!-- 
                    		<div class="al_page_content_info">
                            {{ config.title  }}
                        </div>
                        <div class="al_page_content_info">
                            {{ page.date|date('Y-m-d') }}
                        </div>
                        <div class="al_page_content_dur">
                            {{ page.dur  }}
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
-->                    
                    
                </header>

<!-- 
导航栏
                {% if toc(page.content) %}
                    <div class="al_page_content_outline">
                        {{ toc(page.content,{list_number:false}) }}
                    </div>
                {% endif %}
-->


                {# Page Content #}
                <section id="post-body">
                    {{ page.content }}
                </section>

                {# Comment Plugins #}
                {% include "./includes/plugins/gitalk.swig" %}
                {% include "./includes/plugins/disqus.swig" %}

			<!-- 上下页 -->
            {# Navigate Element #}
            <nav class="dis_flex al_post_nav al_post_nav_bottom">
                <a class="al_post_nav_item dis_flex_acenter" href="{{ url_for(page.prev.path) }}">
                    {% if page.prev %}
                        <svg class="al_arrow">
                            <use xmlns="http://www.w3.org/2000/svg" xlink:href="/assets/svg_icons.svg#svg-arrow-left"></use>
                        </svg>
                        <span class="al_text_ellipsis al_post_nav_desc">{{ page.prev.title }}</span>
                    {% endif %}
                </a>
                <a class="al_post_nav_item dis_flex_acenter" href="{{ url_for(page.next.path) }}">
                    {% if page.next %}
                        <span class="al_text_ellipsis al_post_nav_desc">{{ page.next.title }}</span>
                        <svg class="al_arrow ">
                            <use xmlns="http://www.w3.org/2000/svg" xlink:href="/assets/svg_icons.svg#svg-arrow-right"></use>
                        </svg>
                    {% endif %}
                </a>
            </nav>
        </div>
    </div>

{% endblock %}
