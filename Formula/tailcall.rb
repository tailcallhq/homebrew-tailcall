class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.78.8/tailcall-x86_64-apple-darwin"
    sha256 "f685ae6f4accbe6ed06ef0a63b3b4429e1096b39816896d66287b9fbfdef1820"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.78.8/tailcall-aarch64-apple-darwin"
    sha256 "af3d42dbe6d13b8f15494478f1846f05c988ed7059a7c1ad20ff3eaf256faeea"
  end

  version "v0.78.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
