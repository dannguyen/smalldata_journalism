# Generates a copy of site.pages as site.weighted_pages
# with pages sorted by weight attribute. Pages with no
# weight specified are placed after the pages with specified weight.
# via: https://github.com/aucor/jekyll-plugins

module Jekyll
  
  class WeightedPagesGenerator < Generator
    safe true

    def generate(site)
      site.config['weighted_pages'] = site.pages.sort_by do |a| 
        if a.data['weight'].to_i == 0 # e.g. nil
          site.pages.length 
        else 
          a.data['weight'] 
        end
      end
    end

  end

end