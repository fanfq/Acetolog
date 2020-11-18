<div class="al_index_footer dis_flex_center">
    <!-- 
    <div class="al_index_footer_item al_index_footer_title">
        {{ config.author }}
    </div>
 -->
    {# ICPLicense #}
    {% if theme.ICPLicense.enable === true %}
        <div class="al_index_footer_item" onclick="window.open('http://beian.miit.gov.cn')")>
            {{ theme.ICPLicense.content }}
        </div>
    {% endif %}
<!-- 
    <div class="al_index_footer_item al_index_footer_extra">
        Created By 
        <a href="https://github.com/iGuan7u/Acetolog">AcetoLog</a>
         · Power By 
        <a href="https://hexo.io/">Hexo</a>
    </div>
 -->
    <div class="al_index_footer_item al_index_footer_extra_right">
    &copy; 2020 ❤ ️
         <a href='{{config.url}}'> {{ config.author }} </a> 
    </div>
    
    <div class="al_index_footer_item al_index_footer_extra_right">
        <a href='/about'> 关于 </a> |
        <a href='/archives'> 归档 </a> |
        <a href='/note'> 日志 </a> |
        <a href='/about/devices'> 设备 </a> 
    </div>
        
</div>
