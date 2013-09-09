=begin 
# http://jimpravetz.com/blog/2011/12/generating-jekyll-pages-from-data/
require 'csv'
require 'hashie'

module Jekyll
  class ReferencesPage < Page 
    attr_accessor :dest_url 
    attr_accessor :src_mtime

    def initialize(site, args)


    end

  end

  class ReferencesGenerator < Generator 
    def generate(site)
      mashie = site.load_references_data
      ## site.write_references_page(mashie)
    end
  end



  class Site

    # returns a Mashie by category
    def load_references_data
      @data_mash = Hashie::Mash.new{|h, cat| h[cat] = []}

      tsv_path = File.join('_data', self.config['references_file'])
      CSV.foreach(tsv_path, col_sep: "\t", headers: :first_row) do |row|
    # use row here...
        @data_mash[row['category']] << row
      end

      return @data_mash
    end

    def write_reference_item(row)
      "URL: #{row['title']}"
    end

    def write_references_page(mashie)
      puts "Inside write references page"
      mashie.each_pair do |category, rows|
        rows.each do |row|
          #puts write_reference_item(row)
        end
      end

      refpage = Page.new( self, self.config['source'], '_layouts', 'page.html')
      refpage.render(self.layouts, site_payload)
      refpage.write("about/references.html")
      self.pages << refpage
    end
  end

end

=end
