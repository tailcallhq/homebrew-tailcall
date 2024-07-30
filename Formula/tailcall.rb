class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.11/tailcall-x86_64-apple-darwin"
    sha256 "ca1a57e04445e3760327ff48a195eb5953270656c60e606e075a86b5570b4e10"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.11/tailcall-aarch64-apple-darwin"
    sha256 "aeaaef3464791d91ac3ebaba9a06f94bae9a60c45e544f29542f520194e97db3"
  end

  version "v0.99.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
