project "pl-mesos" do |proj|
  proj.setting(:prefix, File.join("/opt", "mesos"))
  proj.setting(:sysconfdir, File.join(proj.prefix, "etc"))
  proj.setting(:datadir, File.join(proj.prefix, "share"))
  proj.setting(:bindir, File.join(proj.prefix, "bin"))
  proj.setting(:sbindir, File.join(proj.prefix, "sbin"))
  proj.setting(:includedir, File.join(proj.prefix, "include"))
  proj.setting(:libexecdir, File.join(proj.prefix, "libexec"))

  proj.description "Apache Mesos"
  proj.version "0.28.2"
  proj.release "2"
  proj.license "Apache License, Version 2.0"
  proj.vendor "The Apache Foundation <general@apache.org>"

  proj.component "mesos"
  
  proj.requires "pl-mesos-lib"

  proj.directory proj.sysconfdir
  proj.directory proj.datadir
  proj.directory proj.bindir
  proj.directory proj.sbindir
  proj.directory proj.includedir
  proj.directory proj.libexecdir

end
