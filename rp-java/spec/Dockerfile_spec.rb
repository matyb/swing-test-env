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

  it "has javac on path" do
    expect(command("javac -version").stderr).to include("javac 1.8")
  end

  it "has JAVA_HOME set" do
    # docker_init.sh is called in entrypoint/cmd - which isnt invoked from serverspec
    expect(command(". /etc/profile.d/docker_init.sh && echo $JAVA_HOME").stdout).to include("java")
  end

end

