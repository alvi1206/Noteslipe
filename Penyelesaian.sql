---------------------------------------------------------------------------------------------------------------
470032 Ceisa 4.0 - Data freight, gross weight dan net weight Menjadi 0 setelah persetujuan notul
penyelesaian:
1. edit single_core.TD_HEADER where nomor_aju = '00003084978720240828000051';
2. edit single_core.TD_perubahan where ID_HEADER = '2efe193a-5ce4-4697-920f-0f916b34ed2a';
3. select a.id_perubahan, a.id_perubahan_detail, b.id_perubahan_detail_field, a.status_data, a.nama_table, b.nama_field, a.nilai_key, b.data_lama, b.data_baru, b.flag_approval, a.keterangan
from single_core.td_perubahan_detail a, single_core.td_perubahan_detail_field b
where A.ID_PERUBAHAN_DETAIL = B.ID_PERUBAHAN_DETAIL
and a.id_perubahan = '2efe193a-5ce4-4697-920f-0f916b34ed2a'
--and lower(nama_table) like '%entitas%'
--and a.status_data <> 'Hapus'
order by b.waktu_rekam asc;

http://validasi-ekspor-kafka-confluent-validasi.apps.proddc.customs.go.id/Validasi-ekspor/swagger-ui.html#/updateManualPerbaikanDataApprovedUsingPOST/v1/validasiPublic/updateManualPerbaikanDataApproved
updateManualPerbaikanDataApproved






-------------------------------------------------------------------------------------------------------------
Pada akun PFPD Terdapat gangguan saat dilakukan pemeriksaan dokumen BC 2.5 yakni selalu timbul notul, detail dokumen:

PT CONTINENTAL PANJI PRATAMA
NOPEN: 601415 & 601414
Tanggal 29/08/2024

Mohon bantuannya,
Terima kasih.


1. cek no aju di TD_PFPD_barang pastikan datanya ada dan memiliki flag status "O"
2. Lanjut ke td_pungutan dan tt_pungutan sesuaikan nilai tt_pungutan sesuai dengan td_pungutan
3.   



apabila langkah 1 tidak ada silahkan arahkan pfpd melakukan penetapan barang dan melakukan penyelesaia semua seri barang.
lalu silahkan infokan pada tiket kembali





---Terlampir kode billing 620240900044291 status masih create billing. Mohon bantuannya untuk update status menjadi Kirim Billing agar billing dapat dibayar.
1. Masuk ke dalam dboltp
2. Cari billing
3. edit MPN.TD_BILLING_MASTER where KODE_BILLING='620240900044291'; 
4. Pastikan statusnya 20 dan trial nya 1
5. jika trialnya 3 hapus trialnya