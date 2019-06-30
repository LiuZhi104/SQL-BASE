CREATE DATABASE student_examination_sys;
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `score` double(11,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `score` VALUES ('1', '001', '1001', '80');
INSERT INTO `score` VALUES ('2', '002', '1002', '60');
INSERT INTO `score` VALUES ('3', '001', '1001', '70');
INSERT INTO `score` VALUES ('4', '002', '1002', '60.5');
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `student` VALUES ('001', '张三', '18', '男');
INSERT INTO `student` VALUES ('002', '李四', '20', '女');
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `subject` VALUES ('1001', '语文', '王老师', '本次考试比较简单');
INSERT INTO `subject` VALUES ('1002', '数学', '刘老师', '本次考试比较难');
