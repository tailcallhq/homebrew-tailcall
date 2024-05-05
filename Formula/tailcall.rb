class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.2/tailcall-x86_64-apple-darwin"
    sha256 "2ebac7f97d290160482d61759c4d877bbfdcd349f45d59933daf9a9ea059acb3"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.2/tailcall-aarch64-apple-darwin"
    sha256 "c780ecf5c099d30fe0ee5cbd1f418db6b2788076f55699f5602643c4c75d67b1"
  end

  version "v0.82.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
