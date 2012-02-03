require 'spec_helper'
describe PbcoreDocument do
  subject { PbcoreDocument.from_xml('<PBCoreDescriptionDocument xmlns="http://www.pbcore.org/PBCore/PBCoreNamespace.html">
                                        <pbcoreTitle><title>asdf</title></pbcoreTitle>
                                    </PBCoreDescriptionDocument>') }
  it "should have titles" do
    subject.title_container.title.should include("asdf")
    subject.titles.should include("asdf")
  end
end
