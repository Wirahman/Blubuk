CREATE OR REPLACE VIEW v_user_menu
AS
SELECT
u.username AS username,
r.id AS kode_role,
r.detil AS nama_role,
m.menu_url AS menu_url,
m.menu_name AS menu_name
FROM t_role_menu rm, tr_role r, tr_menu m, t_user u
WHERE rm.ref_role=r.id
AND rm.ref_menu=m.id
AND u.ref_role=r.id