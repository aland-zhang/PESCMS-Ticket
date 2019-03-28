INSERT INTO `pes_field` (`field_id`, `field_model_id`, `field_name`, `field_display_name`, `field_type`, `field_option`, `field_explain`, `field_default`, `field_required`, `field_listsort`, `field_list`, `field_form`, `field_status`, `field_is_null`) VALUES
(232, 17, 'weixin_template_id', '微信模板ID', 'text', '', '', '', 0, 5, 1, 1, 1, 0),
(233, 17, 'weixin_template', '微信模板内容', 'textarea', '', '微信模板消息，输入如下变量可以动态输出对应的值：{number}为工单号码。请按照微信公众号选择模板的格式填写对应的参数。', '', 0, 6, 0, 1, 1, 0);

ALTER TABLE `pes_mail_template` ADD `mail_template_weixin_template_id` VARCHAR(128) NOT NULL DEFAULT '' , ADD `mail_template_weixin_template` VARCHAR(500) NOT NULL DEFAULT '' ;

INSERT INTO `pes_field` (`field_id`, `field_model_id`, `field_name`, `field_display_name`, `field_type`, `field_option`, `field_explain`, `field_default`, `field_required`, `field_listsort`, `field_list`, `field_form`, `field_status`, `field_is_null`) VALUES (NULL, '21', 'result', '执行结果', 'text', '', '', '', '1', '2', '1', '1', '1', '0');

ALTER TABLE `pes_send` ADD `send_result` VARCHAR(255) NOT NULL ;

CREATE TABLE IF NOT EXISTS `pes_ticket_notice_action` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_number` varchar(128) NOT NULL COMMENT '工单单号',
  `send_account` varchar(255) NOT NULL DEFAULT '' COMMENT '接收帐号',
  `send_type` int(11) NOT NULL DEFAULT '0' COMMENT '发送方式',
  `template_type` int(11) NOT NULL DEFAULT '0' COMMENT '发送模板类型',
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作消息通知发送动作' AUTO_INCREMENT=1 ;



INSERT INTO `pes_node` (`node_name`, `node_parent`, `node_verify`, `node_msg`, `node_method_type`, `node_value`, `node_check_value`, `node_controller`, `node_listsort`) VALUES
('复制用户组', 21, 1, '', 'POST', 'copy', 'TicketPOSTUser_groupcopy', 22, 141);
