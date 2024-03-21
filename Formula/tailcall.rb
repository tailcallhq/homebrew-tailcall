class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.66.1/tailcall-x86_64-apple-darwin"
    sha256 "42a99cc204c91300e94e82defff67704f3e332008ac87afd195f1ab680331a13"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.66.1/tailcall-aarch64-apple-darwin"
    sha256 "819f5a50fcce5e258075ef87102dd9065db6791168d086437da3e77823f00a8f"
  end

  version "v0.66.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
