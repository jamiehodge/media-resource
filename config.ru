require "./lib/media/resource"

Media::Resource::Controllers::Base.children.each do |child|
  map "/%s" % child.namespace do
    run child
  end
end
