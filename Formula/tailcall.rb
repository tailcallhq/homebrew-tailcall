class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.68.4/tailcall-x86_64-apple-darwin"
    sha256 "1ad3487c5e631f737e10167d96af5cb057a49188521ef637433e546b698d3da1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.68.4/tailcall-aarch64-apple-darwin"
    sha256 "1c1c581dffadc05b361a8ab42bfd65dbb3d4ad4ae3378a92bceddbc09db06dce"
  end

  version "v0.68.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
