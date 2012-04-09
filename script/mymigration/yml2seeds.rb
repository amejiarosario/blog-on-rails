require 'yaml'

def validate(html)
  #html = html.gsub(/<img.*src="([^"]*)".*>/) { |m| m.gsub!($1,"http://adrianmejiarosario.com#{$1}")  }
  #html = html.gsub(/<img.*(src=")\/sites\/default\/files\/pictures\/[^"]*"[^>]*>/){|m| m.gsub!($1,"#{$1}http://adrianmejiarosario.com")}
  html = html.gsub("\"/sites/default/files/", "\"http://adrianmejiarosario.com/sites/default/files/")
  html = html.gsub("'","\\\\'")
end

yml = open('dr_node.yml') { |f| YAML.load f }

File.open('output_seed.rb','w') do |f|
  # create all posts
  yml.each do |p|
    f.write "adrian.posts.create("+
    "title: '#{p['title'].gsub("'","\\\\'")}', "+
    "content: '#{validate(p['body_value'])}', " +
    "created_at: '#{Time.at(p['created'])}', " +
    "updated_at: '#{Time.at(p['changed'])}' " +
    ")\n"
  end
end
