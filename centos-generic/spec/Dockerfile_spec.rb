#! /usr/bin/ruby

require "serverspec"
require "docker"

describe "Dockerfile" do
  before(:all) do
    image = Docker::Image.build_from_dir(File.dirname(__FILE__).gsub(/spec\/*$/,""))

    set :os, family: :redhat
    set :backend, :docker
    set :docker_image, image.id
  end

  it "has wget installed" do
    expect(package("wget")).to be_installed
  end

  it "has curl installed" do
    expect(command("curl -V").stdout).to include("Features:")
  end

  it "has git installed" do
    expect(command("git --version").stdout).to include("git version")
  end

  it "has unzip installed" do
    expect(command("unzip -version").stdout).to include("UnZip special compilation")
  end

  it "has which installed" do
    expect(command("which bash").stdout).to include("/bin/bash")
  end

  it "has sed installed" do
    expect(command("sed --version").stdout).to include("GNU sed")
  end

end

