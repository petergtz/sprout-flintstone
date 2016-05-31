ssh_config "flintstone.*" do
    host 'flintstone.*'
    options 'User' => 'root'
    user node['sprout']['user']
end

ssh_config "flintstone.acceptance" do
    host 'flintstone.acceptance'
    options 'HostName' => '10.155.248.164'
    user node['sprout']['user']
end

ssh_config "flintstone.bosh-lite" do
    host 'flintstone.bosh-lite'
    options 'HostName' => '10.155.248.181'
    user node['sprout']['user']
end

ssh_config "flintstone.bosh-lite2" do
    host 'flintstone.bosh-lite2'
    options 'HostName' => '10.155.248.185'
    user node['sprout']['user']
end

ssh_config "flintstone.concourse" do
    host 'flintstone.concourse'
    options 'HostName' => '10.155.248.166'
    user node['sprout']['user']
end
