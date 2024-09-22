class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.113.0/tailcall-x86_64-apple-darwin"
    sha256 "e6d8dc953b46a4121ef285c7fb3f3266a627efe1af2983df90d87e542332e2d7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.113.0/tailcall-aarch64-apple-darwin"
    sha256 "afdd7567a5b6c2b3a412e50550f680d9895a5257f704cd957bb40e8f4e0652ff"
  end

  version "v0.113.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
