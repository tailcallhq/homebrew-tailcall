class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.85.8/tailcall-x86_64-apple-darwin"
    sha256 "39da5e8bedaaa1f921aa445559f710f67e880724dbb2a29eb8020d9f6cb1e4cc"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.85.8/tailcall-aarch64-apple-darwin"
    sha256 "5c9876b353e71831c7d2afa71a7e98415dbc18fb22938fd3bba4742619152268"
  end

  version "v0.85.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
