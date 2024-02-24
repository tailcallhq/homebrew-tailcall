class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.40.1/tailcall-x86_64-apple-darwin"
    sha256 "064c28c4dbe49d72b2b7d843feef106e09017450246f2a511d8c18269ee45675"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.40.1/tailcall-aarch64-apple-darwin"
    sha256 "48bc103567641a4bb9c591c8dbf9bb31dd4ef0e2910527b29edf675295b3353e"
  end

  version "v0.40.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
