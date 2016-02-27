Dir[File.join(File.expand_path('..', __FILE__), '*.rb')].each do |file|
  next if file =~ /testing_support.rb/ ||
          file =~ /all.rb/

  require file
end
