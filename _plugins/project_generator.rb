module Jekyll

  # A project is a collection of pages with the same project_name
  class Project
    attr_reader :introduction, :conclusion, :tag

    def initialize(project_name, array_of_pages)
      @tag = project_name

      numbered_pages = array_of_pages.select{|p| p.data['project_order'].is_a?(Fixnum) }

      @_numbered_pages = organize_pages(numbered_pages)

      meta_pages = array_of_pages - numbered_pages

      @introduction = meta_pages.detect{|p| p.data['project_order'] =~ /introduction/}
      @conclusion = meta_pages.detect{|p| p.data['project_order'] =~ /conclusion/i}
      
      modify_pages_with_metadata!(array_of_pages)

    end

    def title 
      @introduction.data['title'] 
    end

    def url 
      @introduction.url
    end

    def all_parts
      [@introduction] + @_numbered_pages + [@conclusion]
    end

    # just the numbered pages
    def parts
      @_numbered_pages
    end

    # size minus intro and conclusion
    def size
      parts.count
    end


    def to_liquid
      %w(introduction conclusion title url parts size tag).inject({}) do |h, k|
        h[k] = self.send(k)
        h
      end
    end


    private

    def organize_pages(arr)
      new_arr = arr.sort_by{|p| p.data['project_order']}      
      return new_arr
    end

    def modify_pages_with_metadata!(all_pages)
      all_pages.each do |p|
        p.data['project_object'] = self

        p_order =  p.data['project_order']

        p.data['next_page'] = case p_order
        when 'conclusion'
          nil
        when self.size # p_order is 0 indexed, obv
          @conclusion
        when 'introduction'
          parts.first
        else
          parts[p_order] # p_order is 0 indexed, obv
        end

        p.data['prev_page'] = case p_order
        when 'conclusion'
          parts.last
        when 1 # p_order is 0 indexed, obv
          @introduction
        when 'introduction'
          nil
        else
          parts[p_order - 2] # p_order is 0 indexed, obv
        end
      end

    end

  end


  class ProjectGenerator < Generator
    safe true

    def generate(site)

      project_hash = site.pages.
                       select{ |p| p.data['project'] }.
                       inject(Hash.new{|h,k| h[k] = []}) do |h, p|
                         arr = h[ p.data['project'] ] 
                         arr << p

                         h
                       end

      site.config['projects'] = project_hash.map do |p_hash|
        project_name, project_pages = p_hash.to_a
        project = Project.new(project_name, project_pages)
        
        project
      end

    end
  end
end