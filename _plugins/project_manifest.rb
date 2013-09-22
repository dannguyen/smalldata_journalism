# usage:

# {% project_manifest some-project-tag %}

require 'uri'

module Jekyll
  class ProjectManifest < Liquid::Tag

    def initialize(tag_name, markup, tokens)
      #@project_tag = markup.strip
      super
    end

    def get_project(p_tag, projects)
       projects.select{|project| project.tag == p_tag}.first
    end

    def render(context)
 #     projects = context.registers[:site].config['projects']
      page = context.registers[:page]
      projects = context.registers[:site].config['projects']

      if project_object = get_project(page['project'], projects )
        
        lis = project_object.all_parts.map{|p|
             a_link_klass = (p.url == page['url']) ? 'present' : ''
          %Q{<li><a class="#{a_link_klass}" href="#{p.url}">#{p.data['title']}</a>#{": #{p.data['tagline']}" if p.data['tagline']}</li>}
        }.join()

        return %Q{
<ul class="list-unstyled">
#{lis}
</ul>}

      else
        return %Q{could not find #{@project_tag} inside #{projects.map{|p| p.tag }}}
      end
    end
    
    

  end
end

Liquid::Template.register_tag('project_manifest', Jekyll::ProjectManifest)