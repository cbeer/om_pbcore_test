require 'om'

# See also https://github.com/awead/Hydra-Rock/blob/master/lib/rockhall/pbcore_document.rb
class PbcoreDocument
  include OM::XML::Document

  set_terminology do |t|
    t.root(:path => 'PBCoreDescriptionDocument', :xmlns => "http://www.pbcore.org/PBCore/PBCoreNamespace.html")
    t.title_container(:path => 'pbcoreTitle') {
      t.title(:path => 'title')
      t.titleType(:path => 'titleType')
    }
    t.titles(:proxy => [:title_container, :title])
  end
end
