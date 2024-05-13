class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.19/tailcall-x86_64-apple-darwin"
    sha256 "7ea57b87f69950d350a89f5737ab987e5d4973085b63c9cd83273c91286d3de0"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.19/tailcall-aarch64-apple-darwin"
    sha256 "ff7be52a6f8773e2d021ff5af60aa1769927c736a136dbe5e5e208b2b6add413"
  end

  version "v0.82.19"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
