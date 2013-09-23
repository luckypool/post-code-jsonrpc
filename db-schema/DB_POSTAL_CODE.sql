USE postal_code;
DROP TABLE IF EXISTS postal_code;
CREATE TABLE IF NOT EXISTS postal_code(
      id        int(11) unsigned not null auto_increment
    , jiscode   varchar(6)   not null default ''
    , zipcode   varchar(7)   not null default 0
    , pref_kana varchar(10)  not null default ''
    , city_kana varchar(30)  not null default ''
    , town_kana varchar(100) not null default ''
    , pref      varchar(10)  not null default ''
    , city      varchar(30)  not null default ''
    , town      varchar(100) not null default ''
    , has_some_codes INT NOT NULL COMMENT '一町域が二以上の郵便番号で表される場合の表示'
    , has_koaza      INT NOT NULL COMMENT '小字毎に番地が起番されている町域の表示'
    , has_choume     INT NOT NULL COMMENT '丁目を有する町域の場合の表示'
    , has_some_town  INT NOT NULL COMMENT '一つの郵便番号で二以上の町域を表す場合の表示'
    , has_updated    INT NOT NULL COMMENT '更新の表示'
    , update_type_of INT NOT NULL COMMENT '変更理由'
    , PRIMARY KEY (id)
    , INDEX idx_zipcode (zipcode)
    , INDEX idx_town_kana (city_kana, town_kana)
    , INDEX idx_town (city, town)
) Engine=Innodb default character set utf8 AUTO_INCREMENT=1;

