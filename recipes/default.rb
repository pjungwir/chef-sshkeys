node[:sshkeys][:users].each do |username|

  dbi = data_bag_item('sshkeys', username)

  if dbi && dbi['public_keys']
    directory "/home/#{username}/.ssh" do
      owner username
      group username
      mode '0700'
    end
    file "/home/#{username}/.ssh/authorized_keys" do
      owner username
      group username
      mode '0600'
      content dbi['public_keys'].join("\n")
    end
  end

end

