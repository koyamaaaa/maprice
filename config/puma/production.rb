# confi/puma/production.rb
environment "production"

# UNIX Socketへのバインド
tmp_path = "#{File.expand_path("../../..", __FILE__)}/tmp"
# bindでUNIX Socketにバインド
bind "unix://#{tmp_path}/sockets/puma.sock"
# プロセス監視のために作成(bindするだけなら不要)
# pidfile "#{tmp_path/pids/puma.pid}"

# スレッド数
threads 3, 3 # 最小数, 最大数
# プロセス数
workers 2 # 起動数
# メモリ最適化(Copy on Writeが使われるようになる)
preload_app!

# デーモンとして起動
# daemonize
# 標準出力と標準エラー出力をファイルに出力
stdout_redirect "#{tmp_path}/logs/puma.stdout.log", "#{tmp_path}/logs/puma.stderr.log", true
