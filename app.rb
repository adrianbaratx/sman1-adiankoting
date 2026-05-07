require "sinatra"
require_relative "./data/sekolah"

set :bind, "0.0.0.0"
set :port, ENV.fetch("PORT", 4567)

helpers do
  def active_nav(path)
    request.path_info == path ? "active" : ""
  end

  def component(name, locals = {})
    erb :"components/#{name}", locals: locals, layout: false
  end
end

before do
  @sekolah = DATA_SEKOLAH
end

get "/" do
  @title = "Beranda - SMA Negeri 1 Adiankoting"
  @description = "Website resmi SMA Negeri 1 Adiankoting."
  @stats = STATS
  @layanan = LAYANAN
  @berita = BERITA_TERBARU.first(3)
  erb :index
end

get "/profil" do
  @title = "Profil - SMA Negeri 1 Adiankoting"
  @description = "Profil, sejarah, visi, dan misi SMA Negeri 1 Adiankoting."
  erb :profil
end

get "/kepala-sekolah" do
  @title = "Kepala Sekolah - SMA Negeri 1 Adiankoting"
  @description = "Sambutan Kepala SMA Negeri 1 Adiankoting."
  erb :kepala_sekolah
end

get "/akademik" do
  @title = "Akademik - SMA Negeri 1 Adiankoting"
  @description = "Informasi akademik dan ekstrakurikuler SMA Negeri 1 Adiankoting."
  @program = PROGRAM_AKADEMIK
  erb :akademik
end

get "/berita" do
  @title = "Berita - SMA Negeri 1 Adiankoting"
  @description = "Berita dan pengumuman terbaru SMA Negeri 1 Adiankoting."
  @berita = BERITA_TERBARU
  erb :berita
end

get "/galeri" do
  @title = "Galeri - SMA Negeri 1 Adiankoting"
  @description = "Galeri dokumentasi kegiatan SMA Negeri 1 Adiankoting."
  @galeri = GALERI
  erb :galeri
end

get "/kontak" do
  @title = "Kontak - SMA Negeri 1 Adiankoting"
  @description = "Kontak resmi SMA Negeri 1 Adiankoting."
  erb :kontak
end
