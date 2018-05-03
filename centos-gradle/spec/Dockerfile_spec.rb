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

  it "has gradle installed" do
    expect(command("gradle --version").stdout).to include("Build time:")
  end

end

