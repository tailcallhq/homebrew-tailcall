class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.120.11/tailcall-x86_64-apple-darwin"
    sha256 "770815e6c12c26d371298482da3f496f853a1e1644d3398bde5ad24b032f5ec2"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.120.11/tailcall-aarch64-apple-darwin"
    sha256 "e0fbf4a3ee9ef98952f3b8482cc52aa6c6a29ece6e5ec080c450ee33f803fe0c"
  end

  version "v0.120.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
