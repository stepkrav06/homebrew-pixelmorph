# Formula for the pixelmorph tool
class Pixelmorph < Formula
  include Language::Python::Virtualenv

  desc "Transform and animate image morphs using optimization algorithms"
  homepage "https://github.com/stepkrav06/pixelmorph"
  url "https://github.com/stepkrav06/pixelmorph/archive/refs/tags/v0.1.tar.gz"
  sha256 "9b8d46eb8a2e8fa924da646810c34901c144584f2cdb8b3351458dca7c367f74"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"pixelmorph", "--help"
  end
end