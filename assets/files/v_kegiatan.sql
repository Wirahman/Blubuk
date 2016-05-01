CREATE OR REPLACE VIEW v_kegiatan AS
SELECT
p.tahun_anggaran AS tahun_anggaran,
p.kode AS kode_program,
p.nama AS nama_program,
gk.kode AS kode_grup_kegiatan,
gk.nama AS nama_grup_kegiatan,
k.id AS id_kegiatan,
k.nama AS nama_kegiatan
FROM tr_program p, tr_kegiatan gk, t_kegiatan k
WHERE p.id=gk.ref_program
AND gk.id=k.ref_kegiatan