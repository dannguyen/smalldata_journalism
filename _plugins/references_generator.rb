require 'hashie'
require 'csv'
require 'uri'


module Jekyll

  class ReferenceItem
    def initialize(csv_row)
      @mash = Hashie::Mash.new(csv_row.to_hash)  
    end

    def base_host      
      URI.parse(@mash.source_url).host
      rescue
      return @mash.source_url
    end

    def to_liquid
      @mash.merge({
          'base_host' => base_host
        })
    end
  end

  class ReferencesGenerator < Generator
#    safe true

    def generate(site)
      csv_path = File.join('_data', site.config['references_file'])
      list = load_references_data(csv_path)

      site.config['references'] = list
    end

    def load_references_data(csv_path)
      data_mash = Hashie::Mash.new{|h, c| h[c] = []}
      CSV.foreach(csv_path, col_sep: ",", headers: true) do |row|
        
    # use row here...
        ref_item = ReferenceItem.new(row)
        data_mash[row['category'].to_s] += [ref_item]
#        puts "\n#{row['category'].to_s}: #{row['title']}"
      end

      return data_mash.to_a
    end
  end


end