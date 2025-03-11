class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.16/tailcall-x86_64-apple-darwin"
    sha256 "4ec82413ed4b507875953b34af70ab7e5c9cc971a8bbbeeb0bfce89a64942874"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.16/tailcall-aarch64-apple-darwin"
    sha256 "86bf14dced5a4bdf9a833afbbc945abdc66452ea2d21c29099be677384659790"
  end

  version "v1.5.16"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
