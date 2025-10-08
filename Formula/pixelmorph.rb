# Formula for the pixelmorph tool
class Pixelmorph < Formula
  include Language::Python::Virtualenv

  desc "Transform and animate image morphs using optimization algorithms"
  homepage "https://github.com/stepkrav06/pixelmorph"
  url "https://github.com/stepkrav06/pixelmorph/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e70eb84316a0c62c236a9310f1e952c0d83c86b218445bfdfab69a4debaed99e"
  license "MIT"

  depends_on "python@3.10"
  depends_on "numpy"
  depends_on "pillow"
  depends_on "scipy"
  depends_on "or-tools" 

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
    sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/fe/75/af448d8e52bf1d8fa6a9d089ca6c07ff4453d86c65c145d0a300bb073b9b/rich-14.1.0.tar.gz"
    sha256 "e497a48b844b0320d45007cdebfeaeed8db2a4f4bcf49f15e455cfc4af11eaa8"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/b3/31/4723d756b59344b643542936e37a31d1d3204bcdc42a7daa8ee9eb06fb50/psutil-7.1.0.tar.gz"
    sha256 "655708b3c069387c8b77b072fc429a57d0e214221d01c0a772df7dfedcb3bcd2"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz"
    sha256 "44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/fe/cf/d2d3b9f5699fb1e4615c8e32ff220203e43b248e1dfcc6736ad9057731ca/pycparser-2.23.tar.gz"
    sha256 "78816d4f24add8f10a06d6f05b4d424ad9e96cfebf68a4ddc99c65c0720d00c2"
  end

  resource "rubicon-objc" do
    url "https://files.pythonhosted.org/packages/a7/2f/612049b8601e810080f63f4b85acbf2ed0784349088d3c944eb288e1d487/rubicon_objc-0.5.2.tar.gz"
    sha256 "1180593935f6a8a39c23b5f4b7baa24aedf9f7285e80804a1d9d6b50a50572f5"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "wgpu" do
    url "https://files.pythonhosted.org/packages/04/09/5a3ceb382cfeaeb37bbf0adb14bf187d77e26a96952a5dfcee21f08a922e/wgpu-0.25.0.tar.gz"
    sha256 "b56ead271fb67af6758d3072e11126f7abeb22784da6aae71cb7d436c9867a7d"
  end

  resource "llvmlite" do
    url "https://files.pythonhosted.org/packages/09/b8/b5437b9ecb2064e89ccf67dccae0d02cd38911705112dd0dcbfa9cd9a9de/llvmlite-0.45.1-cp313-cp313-macosx_12_0_arm64.whl"
    sha256 "c9f3cadee1630ce4ac18ea38adebf2a4f57a89bd2740ce83746876797f6e0bfb"
  end

  resource "numba" do
    url "https://files.pythonhosted.org/packages/a3/20/33dbdbfe60e5fd8e3dbfde299d106279a33d9f8308346022316781368591/numba-0.62.1.tar.gz"
    sha256 "7b774242aa890e34c21200a1fc62e5b5757d5286267e71103257f4e2af0d5161"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"pixelmorph", "--help"
  end
end