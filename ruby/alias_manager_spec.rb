require_relative 'alias_manager'

#encode a name
describe "encode_name" do
  it "encodes a name" do
    expect(encode_name("baby david")).to eq("cecz fewof")
    expect(encode_name("zeze tup")).to eq("bibi vaq")
    expect(encode_name("ZEZE TUP")).to eq("bibi vaq")
  end
end