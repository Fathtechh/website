class PostinganController < ApplicationController
  def index
    /@postingan1="Contoh Variable Dari Action"
    @postingan2="Macam Macam Bahasa Pemrograman" 


    @data =[
        "1. Pemrograman Ruby",
        "2. Pemrograman C++",
        "3. Pemrograman PHP",
        "4. Pemrograman Java",
        "5. Pemrograman Python",
        "6. Pemrograman GO",
        "7. Pemrograman Kotlin",
    ]/
  @data = Postingan.all

  end

  def detail
    @data = Postingan.find_by(id: params[:id])
  end

  def input

  end

  def create
    @data = Postingan.new(judul: params[:judul], deskripsi: params[:deskripsi])
    @data.save

    flash[:pesan] = "Data Berhasil Disimpan!!"

    redirect_to("/postingan/index")
  end

  def edit
    @data = Postingan.find_by(id: params[:id])
  end

  def update
    @data = Postingan.find_by(id: params[:id])
    @data.judul = params[:judul]
    @data.deskripsi = params[:deskripsi]
    @data.save
    
    flash[:pesan] = "Data Berhasil Diupdate!!"

    redirect_to("/postingan/index")


  end

  def delete
    @data = Postingan.find_by(id: params[:id])
    @data.destroy
    flash[:pesan] = "Data Berhasil Dihapus!!"
    redirect_to("/postingan/index")

  end


end
