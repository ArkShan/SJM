<?php
session_start();
$koneksi = mysqli_connect("localhost","root","","db_sjm");
if(isset($_POST['registrasi'])){
    $email          = $_POST['email'];
    $nama           = $_POST['namadepan'];
    $namabelakang   = $_POST['namabelakang'];
    $password       = $_POST['password'];
    $database       = mysqli_query($koneksi,"INSERT INTO tb_register (email,namadepan,namabelakang,password) VALUES ('$email','$nama','$namabelakang','$password')"); 

    if($database){
        header('location: login.php');
        
    }else{
        header('location: register.php');
    }
};

// Tombol Submit Barang

if(isset($_POST['addnewbarang'])){
    $kodebarang = $_POST['kode_b'];
    $namabarang = $_POST['nama_b'];
    $tipemobil  = $_POST['tipe_mobil'];
    $kategori   = $_POST['kategori'];
    $harga      = $_POST['harga'];
    $qtyd       = $_POST['pcs_dus'];
    $hargapromo = $_POST['harga_p'];
    // $keterangan= $_POST['keterangan'];

    $addtotable = mysqli_query($koneksi,"INSERT INTO tb_barang (kode_b,nama_b,tipe_mobil,kategori,harga,pcs_dus,harga_p) VALUES ('$kodebarang','$namabarang','$tipemobil','$kategori','$harga','$qtyd','$hargapromo')");
    if($addtotable){
        echo "berhasil";
       
    }else{
        echo "error";
    }
}

if(isset($_POST['updatebarang'])){
    $idb       = $_POST['id_b'];
    $kodebarang = $_POST['kode_b'];
    $namabarang = $_POST['nama_b'];
    $tipemobil  = $_POST['tipe_mobil'];
    $kategori   = $_POST['kategori'];
    $harga      = $_POST['harga'];
    $qtyd       = $_POST['pcs_dus'];
    $hargapromo = $_POST['harga_p'];

    $update = mysqli_query($koneksi,"UPDATE tb_barang set kode_b='$kodebarang',nama_b='$namabarang',tipe_mobil='$tipemobil',kategori='$kategori',harga='$harga',pcs_dus='$qtyd',harga_p='$hargapromo', WHERE id_b='$idb'");
    if($update){
        header('location:ownertables.php');
    } else {
        echo 'gagal';
        header('location:ownertables.php');
    }
}

// Menghapus Barang
if(isset($_POST['hapusbarang'])){
    $idb = $_POST['id_b'];
    $hapus = mysqli_query($koneksi, "DELETE FROM tb_barang WHERE id_b='$idb'");
    if($hapus){
        header('location:ownertables.php');
    } else {
        echo 'gagal';
        header('location:ownertables.php');
    }
}


?>