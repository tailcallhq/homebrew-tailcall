class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.6/tailcall-x86_64-apple-darwin"
    sha256 "7cda29ef3da1dcf0e4b85188b13688377cdca67c82a49f9560db275318a41136"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.6/tailcall-aarch64-apple-darwin"
    sha256 "5c65c01f4db6add6d1c2d06616cf6b5fb4ab61cea60d5b7a6975fdcb168a3b21"
  end

  version "v1.4.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
