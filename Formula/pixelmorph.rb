# Formula for the pixelmorph tool
class Pixelmorph < Formula
  include Language::Python::Virtualenv

  desc "Transform and animate image morphs using optimization algorithms"
  homepage "https://github.com/stepkrav06/pixelmorph"
  url "https://github.com/stepkrav06/pixelmorph/archive/refs/tags/v0.1.tar.gz"
  sha256 "9b8d46eb8a2e8fa924da646810c34901c144584f2cdb8b3351458dca7c367f74"
  license "MIT"

  depends_on "python@3.11"
  # depends_on "or-tools"

  # Python dependencies are declared as resources.
  # Homebrew will download these and make them available to pip.
    # resource "markdown-it-py" do
    #   url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    #   sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
    # end

    # resource "mdurl" do
    #   url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    #   sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
    # end

    # resource "Pygments" do
    #   url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
    #   sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
    # end

    # resource "rich" do
    #   url "https://files.pythonhosted.org/packages/fe/75/af448d8e52bf1d8fa6a9d089ca6c07ff4453d86c65c145d0a300bb073b9b/rich-14.1.0.tar.gz"
    #   sha256 "e497a48b844b0320d45007cdebfeaeed8db2a4f4bcf49f15e455cfc4af11eaa8"
    # end

    # resource "psutil" do
    #   url "https://files.pythonhosted.org/packages/b3/31/4723d756b59344b643542936e37a31d1d3204bcdc42a7daa8ee9eb06fb50/psutil-7.1.0.tar.gz"
    #   sha256 "655708b3c069387c8b77b072fc429a57d0e214221d01c0a772df7dfedcb3bcd2"
    # end

    # resource "numpy" do
    #   url "https://files.pythonhosted.org/packages/76/21/7d2a95e4bba9dc13d043ee156a356c0a8f0c6309dff6b21b4d71a073b8a8/numpy-2.2.6.tar.gz"
    #   sha256 "e29554e2bef54a90aa5cc07da6ce955accb83f21ab5de01a62c8478897b264fd"
    # end

    # resource "pillow" do
    #   url "https://files.pythonhosted.org/packages/f3/0d/d0d6dea55cd152ce3d6767bb38a8fc10e33796ba4ba210cbab9354b6d238/pillow-11.3.0.tar.gz"
    #   sha256 "3828ee7586cd0b2091b6209e5ad53e20d0649bbe87164a459d0676e035e8f523"
    # end

    # resource "scipy" do
    #   url "https://files.pythonhosted.org/packages/0f/37/6964b830433e654ec7485e45a00fc9a27cf868d622838f6b6d9c5ec0d532/scipy-1.15.3.tar.gz"
    #   sha256 "eae3cf522bc7df64b42cad3925c876e1b0b6c35c1337c93e12c0f366f55b0eaf"
    # end

    # resource "cffi" do
    #   url "https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz"
    #   sha256 "44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529"
    # end

    # resource "pycparser" do
    #   url "https://files.pythonhosted.org/packages/fe/cf/d2d3b9f5699fb1e4615c8e32ff220203e43b248e1dfcc6736ad9057731ca/pycparser-2.23.tar.gz"
    #   sha256 "78816d4f24add8f10a06d6f05b4d424ad9e96cfebf68a4ddc99c65c0720d00c2"
    # end

    # resource "rubicon-objc" do
    #   url "https://files.pythonhosted.org/packages/a7/2f/612049b8601e810080f63f4b85acbf2ed0784349088d3c944eb288e1d487/rubicon_objc-0.5.2.tar.gz"
    #   sha256 "1180593935f6a8a39c23b5f4b7baa24aedf9f7285e80804a1d9d6b50a50572f5"
    # end

    # resource "sniffio" do
    #   url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    #   sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
    # end

    # resource "wgpu" do
    #   url "https://files.pythonhosted.org/packages/04/09/5a3ceb382cfeaeb37bbf0adb14bf187d77e26a96952a5dfcee21f08a922e/wgpu-0.25.0.tar.gz"
    #   sha256 "b56ead271fb67af6758d3072e11126f7abeb22784da6aae71cb7d436c9867a7d"
    # end

    # resource "llvmlite" do
    #   url "https://files.pythonhosted.org/packages/99/8d/5baf1cef7f9c084fb35a8afbde88074f0d6a727bc63ef764fe0e7543ba40/llvmlite-0.45.1.tar.gz"
    #   sha256 "09430bb9d0bb58fc45a45a57c7eae912850bedc095cd0810a57de109c69e1c32"
    # end

    # resource "numba" do
    #   url "https://files.pythonhosted.org/packages/a3/20/33dbdbfe60e5fd8e3dbfde299d106279a33d9f8308346022316781368591/numba-0.62.1.tar.gz"
    #   sha256 "7b774242aa890e34c21200a1fc62e5b5757d5286267e71103257f4e2af0d5161"
    # end


  def install
    virtualenv_install_with_resources
  end

  test do
    # A simple test to check if the tool is installed and can run.
    # The --help command should always exit with 0 if it works.
    system bin/"pixelmorph", "--help"
  end
end