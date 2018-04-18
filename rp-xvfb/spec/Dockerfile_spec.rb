#! /usr/bin/ruby

require "serverspec"
require "docker"

describe "Dockerfile" do
  before(:all) do
    image = Docker::Image.build_from_dir('.')

    set :os, family: :redhat
    set :backend, :docker
    set :docker_image, image.id
  end

  it "has a DISPLAY" do
    expect(command("echo $DISPLAY").stdout).to eq(":99\n")
  end

  it "has xvfb installed" do
    expect(command("which Xvfb").stdout).to include("Xvfb")
  end

end

