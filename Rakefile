require "csv"

datasets = CSV.table "source/data/datasets.csv"


namespace :reconstruction do

  datasets.each do |row|
    reconstructed = row[:reconstructed]
    csv = reconstructed.ext "csv"
    min_pixel = row[:min_pixel]
    max_pixel = row[:max_pixel]

    file csv => [reconstructed, "source/data/rawdata/hdf2csv.py", "source/data/datasets.csv"] do |f|
      sh "python #{f.prerequisites[1]} #{f.prerequisites[0]} --crop #{min_pixel} #{max_pixel}"
    end
  end

end


namespace :summary do

  summary = []
  file "data/build_summary.csv" => datasets[:reconstructed].map {|reconstructed|  reconstructed.ext("csv") } do |f|
    datasets.each do |row|
      row[:csv] = row[:reconstructed].ext "csv"
      summary << row
    end
    CSV.open(f.name, "w", write_headers: true, headers: datasets.headers) do |csv|
      summary.each do |row|
        csv.puts row
      end
    end
  end

  file "data/build_summary.csv" => "source/data/datasets.csv"

  file "data/summary.json" => ["data/build_summary.R", "data/build_summary.csv"] do |f|
    sh "./#{f.prerequisites[0]} #{f.prerequisites[1]} #{f.name}"
  end

  task :all => "data/summary.json"

end


task :default => ["summary:all"]
