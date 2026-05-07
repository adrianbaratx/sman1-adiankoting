require "sinatra"

set :bind, "0.0.0.0"
set :port, ENV.fetch("PORT", 4567)

helpers do
  def active_nav(path)
    request.path_info == path ? "active" : ""
  end
end

get "/" do
  @title = "Beranda - SMA Negeri 1 Adiankoting"
  erb :index
end

get "/profil" do
  @title = "Profil - SMA Negeri 1 Adiankoting"
  erb :profil
end

get "/kepala-sekolah" do
  @title = "Kepala Sekolah - SMA Negeri 1 Adiankoting"
  erb :kepala_sekolah
end

get "/akademik" do
  @title = "Akademik - SMA Negeri 1 Adiankoting"
  erb :akademik
end

get "/berita" do
  @title = "Berita - SMA Negeri 1 Adiankoting"
  erb :berita
end

get "/galeri" do
  @title = "Galeri - SMA Negeri 1 Adiankoting"
  erb :galeri
end

get "/kontak" do
  @title = "Kontak - SMA Negeri 1 Adiankoting"
  erb :kontak
end