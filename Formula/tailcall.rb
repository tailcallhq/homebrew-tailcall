class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.2/tailcall-x86_64-apple-darwin"
    sha256 "ccd58a520dc226c2e60985daf46830a37cb43ff958c44338b3737511502407e8"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.2/tailcall-aarch64-apple-darwin"
    sha256 "6b81b2b32d824243a49df56c9fb5c4de005c686b209b2cab16266acdab7039a1"
  end

  version "v1.4.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
