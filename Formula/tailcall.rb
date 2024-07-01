class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.94.1/tailcall-x86_64-apple-darwin"
    sha256 "7d01c594256e171803dc93f00ecd063ff1acfea600658234b1f48feaff2d0e90"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.94.1/tailcall-aarch64-apple-darwin"
    sha256 "20c3b091766c4e8392dc786cd1857a9ff2e01ec3e1b019333e68f6a15e3098cd"
  end

  version "v0.94.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
