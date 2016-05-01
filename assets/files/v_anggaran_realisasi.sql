CREATE OR REPLACE VIEW v_anggaran_realisasi AS
SELECT
p.tahun_anggaran AS tahun_anggaran,
p.kode AS kode_program,
p.nama AS nama_program,
gk.kode AS kode_grup_kegiatan,
gk.nama AS nama_grup_kegiatan,
k.id AS id_kegiatan,
k.nama AS nama_kegiatan,
a.id AS id_anggaran,
a.uraian AS uraian_anggaran,
a.ref_rekening AS kode_rekening,
r.nama AS nama_rekening,
ar.bulan AS bulan,
ar.spj AS spj,
ar.sp2d AS sp2d
FROM tr_program p, tr_kegiatan gk, t_kegiatan k, t_anggaran a, tr_rekening r, t_anggaran_realisasi ar
WHERE p.id=gk.ref_program
AND gk.id=k.ref_kegiatan
AND k.id=a.ref_kegiatan
AND r.kode=a.ref_rekening
AND ar.ref_anggaran=a.id