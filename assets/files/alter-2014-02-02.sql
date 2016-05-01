UPDATE `tr_menu` SET `icon_class`='icon-folder-open' WHERE `id`='20';
INSERT INTO `tr_menu` (`menu_url`, `menu_name`, `icon_class`, `position`, `is_left_menu`, `has_child`, `parent_id`) VALUES ('capaian/rpjmd/', 'Capaian RPJMD', 'icon-eye-open', '150', '1', '0', '0');
INSERT INTO `t_role_menu` (`ref_menu`, `ref_role`) VALUES ('38', '1');
ALTER TABLE `tr_kegiatan` ADD `is_abt` ENUM('0','1') NULL DEFAULT NULL AFTER `ref_program`;
ALTER TABLE `t_kegiatan` ADD `catatan` TEXT NULL DEFAULT NULL AFTER `is_anggaran_plan_done`;
