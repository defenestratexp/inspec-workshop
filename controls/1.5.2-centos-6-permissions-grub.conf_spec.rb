control "cis-1-5-2" do
  impact 1.0
  title "1.5.2 Set Permissions on /etc/grub.conf (Scored)"
  desc "Set permission on the /etc/grub.conf file to read and write for root only."
  describe file('/etc/grub.conf') do
    it { should be_writable.by('owner') }
    it { should be_readable.by('owner') }
  end
end
