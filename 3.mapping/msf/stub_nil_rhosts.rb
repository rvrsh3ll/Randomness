set SSL false

<ruby>
framework.db.hosts.each do |host|
  host.services.each do |service|
    if service.proto == "tcp" && service.name == nil
      self.run_single("set RHOSTS #{host.address}")
      self.run_single("set RPORT #{service.port}")
      self.run_single("run")
    end
  end
end
</ruby>

set SSL true

<ruby>
framework.db.hosts.each do |host|
  host.services.each do |service|
    if service.proto == "tcp" && service.name == nil
      self.run_single("set RHOSTS #{host.address}")
      self.run_single("set RPORT #{service.port}")
      self.run_single("run")
    end
  end
end
</ruby>
