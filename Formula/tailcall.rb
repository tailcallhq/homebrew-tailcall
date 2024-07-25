class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.98.3/tailcall-x86_64-apple-darwin"
    sha256 "5d327342eb7ff97c89678ac9118f1d934f758c52a45490aeab0706cf89927598"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.98.3/tailcall-aarch64-apple-darwin"
    sha256 "f516415b3084abe9fb7a14a21127507ce6446a6a3d9ac66de8b88f35906212f9"
  end

  version "v0.98.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
