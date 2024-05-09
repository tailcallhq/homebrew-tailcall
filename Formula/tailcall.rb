class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.13/tailcall-x86_64-apple-darwin"
    sha256 "fe02da948e291cfcdff0d08273eaf525c246909b90664d62ff72e7e6ce58bf98"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.13/tailcall-aarch64-apple-darwin"
    sha256 "68f023d9111c96d60ed0d3dc95aa366adba6a9ec74f2ed3d4f5e4a08fe13fc28"
  end

  version "v0.82.13"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
