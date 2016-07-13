project "pl-mesos" do |proj|
  proj.setting(:prefix, File.join("/opt", "mesos"))

  proj.description "Apache Mesos"
  proj.version "0.28.2"
  proj.license "Apache License, Version 2.0."
  proj.vendor "The Apache Foundation <general@apache.org>"

  proj.component "mesos"

  proj.directory proj.prefix
end
