class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.115.1/tailcall-x86_64-apple-darwin"
    sha256 "773dc7b6313fca79102f2680f1bb3640c76e86dbc94dda72cb8f20026cc510d6"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.115.1/tailcall-aarch64-apple-darwin"
    sha256 "d85a68cf76e49d5bfdd213c4177fe98298b5db39b6afd358257e11065eb4f713"
  end

  version "v0.115.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
