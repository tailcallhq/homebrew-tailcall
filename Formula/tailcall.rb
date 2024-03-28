class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.69.3/tailcall-x86_64-apple-darwin"
    sha256 "506efb7b6e331f04c27b2e38b8d8ed2da290c3a92426499648d34fcab124f692"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.69.3/tailcall-aarch64-apple-darwin"
    sha256 "ca0e17ce9edd3f60057a18742aaf80d1fd5105251118629225eee3174da62e5a"
  end

  version "v0.69.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
