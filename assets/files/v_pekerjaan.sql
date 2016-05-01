CREATE OR REPLACE VIEW v_pekerjaan AS
SELECT
p.tahun_anggaran AS tahun_anggaran,
p.kode AS kode_program,
p.nama AS nama_program,
gk.kode AS kode_grup_kegiatan,
gk.nama AS nama_grup_kegiatan,
k.id AS id_kegiatan,
k.nama AS nama_kegiatan,
pk.id AS id_pekerjaan,
pk.nama_pekerjaan AS nama_pekerjaan,
pk.tahap AS tahap,
pk.p_bobot AS p_bobot,
pk.p_bulan_target AS p_bulan_target,
pk.r_bobot AS r_bobot,
pk.r_bulan_target AS r_bulan_target
FROM tr_program p, tr_kegiatan gk, t_kegiatan k, t_pekerjaan pk
WHERE p.id=gk.ref_program
AND gk.id=k.ref_kegiatan
AND k.id=pk.ref_kegiatan