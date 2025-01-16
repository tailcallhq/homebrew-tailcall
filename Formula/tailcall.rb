class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.15/tailcall-x86_64-apple-darwin"
    sha256 "ad5348a9e5e94587c3bcc35ca759711872f9b0390e3b517c19513199bd205dd3"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.15/tailcall-aarch64-apple-darwin"
    sha256 "5a93cb8bdd08fd78c0580dce2d40005bb9f7733b26d38bd584cbd4341a322d31"
  end

  version "v1.4.15"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
