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
    safe true

    def generate(site)
      tsv_path = File.join('_data', site.config['references_file'])
      list = load_references_data(tsv_path)

      site.config['references'] = list
    end

    def load_references_data(tsv_path)
      data_mash = Hashie::Mash.new{|h, cat| h[cat] = []}
      CSV.foreach(tsv_path, col_sep: ",", headers: :first_row) do |row|
    # use row here...
        data_mash[row['category'].to_s] << ReferenceItem.new(row)
      end

      return data_mash.to_a
    end
  end


end