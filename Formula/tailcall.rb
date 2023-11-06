class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.14.14/tailcall-x86_64-apple-darwin"
    sha256 "e31d31822f9c8ee548719cdcb504f3b609217c03e41397fa916e24ff0163c60c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.14.14/tailcall-aarch64-apple-darwin"
    sha256 "413b0c829432b68596b0d74d39c234884acd2f493dfa70f6693334f1fa4b2dbd"
  end

  version "v0.14.14"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
