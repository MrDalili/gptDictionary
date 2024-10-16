create table words_book_extend
(
    id          int auto_increment comment 'id'
        primary key,
    content     text                                  not null comment '内容',
    content_cn  varchar(255)                          null comment '翻译',
    type        int                                   not null comment '类型 1词组 2例句 3小故事',
    `explain`   text                                  null comment '扩展解释',
    word_id     int                                   null comment '单词id',
    creator     varchar(64) default ''                null comment '创建者',
    create_time datetime    default CURRENT_TIMESTAMP not null comment '创建时间',
    updater     varchar(64) default ''                null comment '更新者',
    update_time datetime    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    deleted     bit         default b'0'              not null comment '是否删除',
    tenant_id   bigint      default 0                 not null comment '租户编号'
)
    comment '单词扩展记忆' collate = utf8mb4_bin;

这个表的数据太大了 400多 mb，在公众号后台领取...
