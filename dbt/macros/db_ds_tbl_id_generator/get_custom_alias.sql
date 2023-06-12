{%- macro generate_alias_name(custom_alias_name=none, node=none) -%}

    {% set is_elementary =     ('elementary' in node.fqn[0])  %}
    {% set is_project_evaluator = ('dbt_project_evaluator' in node.fqn) %}

    {%- if target.name == 'sbx' and not (is_elementary or is_project_evaluator) -%}
        {%- if custom_alias_name -%}
            {{ env_var('USER') }}_{{ custom_alias_name | trim }}
        {%- elif node.version -%}
            {{ env_var('USER') }}_{{ node.name ~ "_v" ~ (node.version | replace(".", "_")) }}
        {%- else -%}
            {{ env_var('USER') }}_{{ node.name }}
        {%- endif -%}

    {%- else -%}
        {%- if custom_alias_name -%}
            {{ custom_alias_name | trim }}
        {%- elif node.version -%}
            {{ node.name ~ "_v" ~ (node.version | replace(".", "_")) }}
        {%- else -%}
            {{ node.name }}
        {%- endif -%}
    {%- endif -%}

{%- endmacro %}

