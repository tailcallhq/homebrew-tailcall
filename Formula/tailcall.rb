class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.114.1/tailcall-x86_64-apple-darwin"
    sha256 "29fefcd86672fea4ad0ee4996f3d7cecb9d8f96e53cf58f9341ee0d30dceab2a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.114.1/tailcall-aarch64-apple-darwin"
    sha256 "c72e68159af66e8d693fb9dcdb9d933934902649e3d54535a68aac137d582322"
  end

  version "v0.114.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
