# usage:

# {% project_manifest some-project-tag %}

require 'uri'

module Jekyll
  class ProjectManifest < Liquid::Tag

    def initialize(tag_name, markup, tokens)
      @project_tag = markup.strip
      super
    end

    def get_project(p_tag, projects)
       projects.select{|project| project.tag == p_tag}.first
    end

    def render(context)
      projects = context.registers[:site].config['projects']
      if project_object = get_project(@project_tag, projects )
        return %Q{<h2>The project tag is: #{@project_tag}</h2>}
      else
        return %Q{could not find #{@project_tag} inside #{projects.map{|p| p.tag }}}
      end
    end
    
    

  end
end

Liquid::Template.register_tag('project_manifest', Jekyll::ProjectManifest)