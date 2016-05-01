CREATE TABLE IF NOT EXISTS `tr_program_grup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;
insert into tr_program_grup(nama) values('default group');
ALTER TABLE `tr_program` ADD `ref_grup` INT NOT NULL AFTER `nama`, ADD INDEX (`ref_grup`) ;
update tr_program set ref_grup=1;
ALTER TABLE `tr_program` ADD FOREIGN KEY (`ref_grup`) REFERENCES `tr_program_grup`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
