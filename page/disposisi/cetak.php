<?php
 error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
 include "../../include/hari.php";
include "../../koneksi/koneksi.php";
$sql2 = $koneksi->query("select * from tb_profile ");
  $profile=$sql2->fetch_assoc();
  
?>
<link rel="shortcut icon" href="../../images/<?php echo $profile['foto']; ?>" type = "image/x-icon" />
<title><?php echo strtoupper($title) ?></title>
    <style type="text/css">

	.tabel{border-collapse: collapse;}
	.tabel th{padding: 8px 5px; background-color: #cccccc;}
	.tabel td{padding: 8px 5px;}
	 img{width:125px; height:130px;}
	 td{font-size:13px;}
	 th{font-size:10px;}

	 .style2 {
    color: black;
    font-weight: bold;
    margin-left:20px ;

}
	</style>


  <script>
  

      window.print();
      window.onfocus=function() {window.close();}
        
  

</script>
</head>

<body onload="window.print()">


<?php 

    
  $id = $_GET['id'];
  $sql1 = $koneksi->query("select * from tb_disposisi,  m_dispos, tb_asal_tujuan, ref_klasifikasi where tb_disposisi.teruskan=m_dispos.id_dispos and tb_disposisi.kode_surat=ref_klasifikasi.id and tb_disposisi.asal_surat=tb_asal_tujuan.id_asal_tujuan and tb_disposisi.id='$id'");
  $tampil=$sql1->fetch_assoc();

 ?>

  <?php

   
    $sql = $koneksi->query("select * from tb_profile");
    $data = $sql->fetch_assoc();

?>

    

<table class="tabel" width="100%" border="1">
  <th style="background-color: #cccccc;">
  <table height="50" width="100%" border="0">
  <tr>
    <!-- <td rowspan="2"><img src="../../images/logo smk mupat.png"></td> -->
    <td rowspan="2" width ="45%"><div align="right"><img src="../../images/<?php echo $data['foto'] ?>" width="160" height="160" ></td>
    <td height="25" valign="bottom" style='border: 0;'><div align="left"><strong style="font-size: 18px;"><?php echo $data['lembaga'] ?> </strong><br> <?php echo $data['alamat'] ?></td>
  </tr>
  <tr>
    <td height="25" valign="top"><div align="left"><strong style="font-size: 18px;">LEMBAR DISPOSISI</strong></div></td>
  </tr>
  </table>
  </th>
</table>
<table class="tabel" width="100%" border="1">
  <tr>
    <td colspan="2">Indeks Berkas <span style="margin-left: 70px">:
      
    </span> <?php echo $tampil['indeks'] ?>   <span style="margin-left: 150px">Kode : <?php echo $tampil['kode'] ?>
      
    </span></td>
  </tr>
  <tr>
    <td colspan="2">Tanggal/Nomor <span style="margin-left: 62px">:
      
    </span> <?php echo date('d F Y', strtotime($tampil['tgl_surat'])) ?>/ <?php echo $tampil['no_surat'] ?></td>
  </tr>
  <tr>
    <td colspan="2">Asal Surat <span style="margin-left: 89px">:
      
    </span><?php echo $tampil['asal_tujuan'] ?></td>
  </tr>
  <tr>
    <td colspan="2">Isi Ringkas <span style="margin-left: 85px">:
      
    </span><?php echo $tampil['perihal'] ?></td>
  </tr>
  <tr>
    <td colspan="2">Diterima Tanggal <span style="margin-left: 53px">:
      
    </span><?php echo date('d F Y', strtotime($tampil['tanggal_terima'])) ?></td>
  </tr>
  <tr>
    <td colspan="2">Tanggal Penyelesaian : </td>
  </tr>
  <tr>
    <td width="216" height="161" valign="top">Isi Disposisi : <br> <?php echo $tampil['ket'] ?>.
    <br><br>Batas : <?php echo date('d F Y', strtotime($tampil['batas'])) ?> <br> Sifat : <?php echo $tampil['sifat_dispos'] ?></td>
    <td width="242" valign="top">Diteruskan Kepada : <br> <?php echo $tampil['nama_bagian'] ?></td>
  </tr>
</table>


  </tbody>
