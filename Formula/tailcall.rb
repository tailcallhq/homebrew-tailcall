class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.92.3/tailcall-x86_64-apple-darwin"
    sha256 "6c671f4484b219713a07e086f241b04efcf75dcfd8dd237e000c5f41ab58cbab"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.92.3/tailcall-aarch64-apple-darwin"
    sha256 "456ef51aba0d0efd0b0a2f7a47c18e190c938a888677617821d6f16900c01871"
  end

  version "v0.92.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
