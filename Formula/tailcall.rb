class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.79.5/tailcall-x86_64-apple-darwin"
    sha256 "99726a0453d82a0a791031c8313e8ef3360d6da08bfef1df4a17a7e7cf6c7634"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.79.5/tailcall-aarch64-apple-darwin"
    sha256 "eae939b7c31f831bcaddf92ec5c42552a5949390f1265243a28fbea301eb0dab"
  end

  version "v0.79.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
