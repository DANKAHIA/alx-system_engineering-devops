# Sky is the limit, let's bring that limit higher

exec {'replace':
  provider => shell,
  command  => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/" /etc/default/nginx',
  before   => Exec['restart'],
}

exec {'restart':
  provider => shell,
  command  => 'service nginx restart',
}
