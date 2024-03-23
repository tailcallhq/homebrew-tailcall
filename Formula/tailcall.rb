class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.66.4/tailcall-x86_64-apple-darwin"
    sha256 "e829935537ba6451adba1b57b930946a0e594088a122bf00ff8d2d723ecf3a7f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.66.4/tailcall-aarch64-apple-darwin"
    sha256 "a9f334ea3f6536d7498246d461d068ef0a95d4370d1f94d6aef25dedbc9b1f5b"
  end

  version "v0.66.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
