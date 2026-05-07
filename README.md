# Website SMA Negeri 1 Adiankoting - Ruby Sinatra

Website sekolah berbasis Ruby Sinatra dengan desain professional dan responsive.

## Cara menjalankan di lokal

```bat
cd /d D:\UNPRI\sma\sman1_adiankoting_ruby
bundle install
bundle exec ruby app.rb
```

Buka browser:

```text
http://localhost:4567
```

## Deploy ke Render

Build command:

```bash
bundle install
```

Start command:

```bash
bundle exec rackup -p $PORT -o 0.0.0.0
```

Catatan: GitHub Pages tidak menjalankan Ruby/Sinatra. Simpan kode di GitHub, lalu deploy ke Render/Railway/Fly.io/VPS.
