CSV_DIR = File.expand_path "~/Downloads/sunlight-house-csvs"

master_csv = File.open(File.join(CSV_DIR, 'house-all.csv'), 'w')

Dir.glob(File.join(CSV_DIR, '*.csv')).
          select{|fname| fname =~ /detail\.csv/}.each_with_index do |csv_name, idx|

  puts "Adding #{csv_name}"

  open(csv_name, 'r') do |csv_file|

    headers = csv_file.readline
    master_csv << headers if idx == 0 # get the headers the very first time

    until csv_file.eof?
      master_csv << csv_file.readline
    end
  end # closing csv_file
end

# close and flush master_csv

master_csv.close