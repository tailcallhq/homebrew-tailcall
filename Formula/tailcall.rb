class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.133.2/tailcall-x86_64-apple-darwin"
    sha256 "c01ddf78fdb79d1134bc81ed918ea729a48989f72153ae65b34a199535652aa4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.133.2/tailcall-aarch64-apple-darwin"
    sha256 "90ffa92ca69bc6cae201e8e2fc2311c0334e3ed764b817e07a4c15bdffad0357"
  end

  version "v0.133.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
