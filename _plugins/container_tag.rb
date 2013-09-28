
module Jekyll
 
  class ContainerBlock < Liquid::Block
 
    def render(context)
      content = super 
      html_content = Kramdown::Document.new(content).to_html 

      "<div class=\"container\">
        #{html_content}
      </div>"
    end
 
 
  end
end
 
Liquid::Template.register_tag('container_block', Jekyll::ContainerBlock)