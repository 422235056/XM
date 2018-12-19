
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- --------------------------------------------------------
--
-- 表的结构 `fx_index_carousel`
--

CREATE TABLE `fx_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fx_index_carousel`
--

INSERT INTO `fx_index_carousel` (`cid`, `img`, `title`, `href`) VALUES
(1, 'http://127.0.0.1:3000/img/index/banner1.png', '轮播广告商品1', 'product_details.html?lid=12'),
(2, 'http://127.0.0.1:3000/img/index/banner2.png', '轮播广告商品2', 'product_details.html?lid=5'),
(3, 'http://127.0.0.1:3000/img/index/banner1.png', '轮播广告商品3', 'product_details.html?lid=6'),
(4, 'http://127.0.0.1:3000/img/index/banner2.png', '轮播广告商品4', 'product_details.html?lid=1');

-- --------------------------------------------------------

-- 首页商品九宫格
-- 表的结构 `fx_index_product`
--
CREATE TABLE `fx_index_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `seq_new_arrival` tinyint(4) DEFAULT NULL,
  `seq_top_sale` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `fx_index_product` (`pid`, `title`, `details`, `pic`, `price`, `href`, `seq_recommended`, `seq_new_arrival`, `seq_top_sale`) VALUES
(1, '商品01', '统一标准', 'http://127.0.0.1:3000/img/index/ZX_01.png', '6988.00', 'product_details.html?lid=1', 1, 1, 1),
(2, '商品02', '统一标准', 'http://127.0.0.1:3000/img/index/ZX_02.png', '3488.00', 'product_details.html?lid=5', 2, 2, 2),
(3, '商品03', '统一标准', 'http://127.0.0.1:3000/img/index/ZX_03.png', '5399.00', 'product_details.html?lid=9', 3, 3, 3),
(4, '商品04', '统一标准', 'http://127.0.0.1:3000/img/index/ZX_04.png', '4966.00', 'product_details.html?lid=13', 4, 4, 4),
(5, '商品05', '统一标准', 'http://127.0.0.1:3000/img/index/ZX_05.png', '6299.00', 'product_details.html?lid=17', 5, 5, 5),
(6, '商品06', '统一标准', 'http://127.0.0.1:3000/img/index/ZX_06.png', '5199.00', 'product_details.html?lid=19', 6, 6, 6),
(7, '商品07', '统一标准', 'http://127.0.0.1:3000/img/index/ZX_07.png', '6988.00', 'product_details.html?lid=1', 7, 7, 7),
(8, '商品08', '统一标准', 'http://127.0.0.1:3000/img/index/ZX_08.png', '3488.00', 'product_details.html?lid=5', 8, 8, 8),
(9, '商品09', '统一标准', 'http://127.0.0.1:3000/img/index/ZX_09.png', '5399.00', 'product_details.html?lid=9', 9, 9, 9),
(10, '商品10', '统一标准', 'http://127.0.0.1:3000/img/index/ZX_10.png', '4966.00', 'product_details.html?lid=13', 10, 10, 10),
(11, '商品11', '统一标准', 'http://127.0.0.1:3000/img/index/ZX_11.png', '6299.00', 'product_details.html?lid=17', 11, 11, 11),
(12, '商品12', '统一标准', 'http://127.0.0.1:3000/img/index/ZX_12.png', '5199.00', 'product_details.html?lid=19', 12, 12, 12),
(13, '商品13', '统一标准', 'http://127.0.0.1:3000/img/index/ZX_01.png', '5799.00', 'product_details.html?lid=38', 0, 0, 0);

-- --------------------------------------------------------

-- 楼层轮播图
-- 表的结构 `fx_floor_LB`
--

CREATE TABLE `fx_floor_LB` (
  `fid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fx_floor_LB` (`fid`, `title`, `img`, `price`) VALUES
(1, '标题', 'http://127.0.0.1:3000/img/floor/LB_01.png', '6988.00'),
(2, '标题', 'http://127.0.0.1:3000/img/floor/LB_02.png', '3988.00'),
(3, '标题', 'http://127.0.0.1:3000/img/floor/LB_03.png', '999.00'),
(4, '标题', 'http://127.0.0.1:3000/img/floor/LB_04.png', '588.00'),
(5, '标题', 'http://127.0.0.1:3000/img/floor/LB_05.png', '1988.00'),
(6, '标题', 'http://127.0.0.1:3000/img/floor/LB_06.png', '699.00'),
(7, '标题', 'http://127.0.0.1:3000/img/floor/LB_07.png', '399.00');
-- --------------------------------------------------------

-- --------------------------------------------------------

-- 楼层数据表
-- 表的结构 `fx_floor_LC`
--
--LC1
CREATE TABLE `fx_floor_LC1` (
  `fid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `place` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fx_floor_LC1` (`fid`, `title`, `img`, `details`, `place`, `price`) VALUES
(1, '标题', 'http://127.0.0.1:3000/img/floor/LC1_big_01.png', '商品介绍: 统一标准', '中国', '499.00'),
(2, '标题', 'http://127.0.0.1:3000/img/floor/LC1_01.png', '商品介绍: 统一标准', '中国', '499.00'),
(3, '标题', 'http://127.0.0.1:3000/img/floor/LC1_02.png', '商品介绍: 统一标准', '中国', '499.00'),
(4, '标题', 'http://127.0.0.1:3000/img/floor/LC1_03.png', '商品介绍: 统一标准', '中国', '499.00'),
(5, '标题', 'http://127.0.0.1:3000/img/floor/LC1_04.png', '商品介绍: 统一标准', '中国', '499.00'),
(6, '标题', 'http://127.0.0.1:3000/img/floor/LC1_05.png', '商品介绍: 统一标准', '中国', '499.00'),
(7, '标题', 'http://127.0.0.1:3000/img/floor/LC1_06.png', '商品介绍: 统一标准', '中国', '499.00'),
(8, '标题', 'http://127.0.0.1:3000/img/floor/LC1_big_02.png', '商品介绍: 统一标准', '中国', '499.00');

--LC2
CREATE TABLE `fx_floor_LC2` (
  `fid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `place` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fx_floor_LC2` (`fid`, `title`, `img`, `details`, `place`, `price`) VALUES
(1, '标题', 'http://127.0.0.1:3000/img/floor/LC2_big_01.png', '商品介绍: 统一标准', '中国', '499.00'),
(2, '标题', 'http://127.0.0.1:3000/img/floor/LC2_01.png', '商品介绍: 统一标准', '中国', '499.00'),
(3, '标题', 'http://127.0.0.1:3000/img/floor/LC2_02.png', '商品介绍: 统一标准', '中国', '499.00'),
(4, '标题', 'http://127.0.0.1:3000/img/floor/LC2_03.png', '商品介绍: 统一标准', '中国', '499.00'),
(5, '标题', 'http://127.0.0.1:3000/img/floor/LC2_04.png', '商品介绍: 统一标准', '中国', '499.00'),
(6, '标题', 'http://127.0.0.1:3000/img/floor/LC2_05.png', '商品介绍: 统一标准', '中国', '499.00'),
(7, '标题', 'http://127.0.0.1:3000/img/floor/LC2_06.png', '商品介绍: 统一标准', '中国', '499.00'),
(8, '标题', 'http://127.0.0.1:3000/img/floor/LC2_big_02.png', '商品介绍: 统一标准', '中国', '499.00');

--LC3
CREATE TABLE `fx_floor_LC3` (
  `fid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `place` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fx_floor_LC3` (`fid`, `title`, `img`, `details`, `place`, `price`) VALUES
(1, '标题', 'http://127.0.0.1:3000/img/floor/LC3_big_01.png', '商品介绍: 统一标准', '中国', '499.00'),
(2, '标题', 'http://127.0.0.1:3000/img/floor/LC3_01.png', '商品介绍: 统一标准', '中国', '499.00'),
(3, '标题', 'http://127.0.0.1:3000/img/floor/LC3_02.png', '商品介绍: 统一标准', '中国', '499.00'),
(4, '标题', 'http://127.0.0.1:3000/img/floor/LC3_03.png', '商品介绍: 统一标准', '中国', '499.00'),
(5, '标题', 'http://127.0.0.1:3000/img/floor/LC3_04.png', '商品介绍: 统一标准', '中国', '499.00'),
(6, '标题', 'http://127.0.0.1:3000/img/floor/LC3_05.png', '商品介绍: 统一标准', '中国', '499.00'),
(7, '标题', 'http://127.0.0.1:3000/img/floor/LC3_06.png', '商品介绍: 统一标准', '中国', '499.00'),
(8, '标题', 'http://127.0.0.1:3000/img/floor/LC3_big_02.png', '商品介绍: 统一标准', '中国', '499.00');

--LC4
CREATE TABLE `fx_floor_LC4` (
  `fid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `place` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fx_floor_LC4` (`fid`, `title`, `img`, `details`, `place`, `price`) VALUES
(1, '标题', 'http://127.0.0.1:3000/img/floor/LC4_big_01.png', '商品介绍: 统一标准', '中国', '499.00'),
(2, '标题', 'http://127.0.0.1:3000/img/floor/LC4_01.png', '商品介绍: 统一标准', '中国', '499.00'),
(3, '标题', 'http://127.0.0.1:3000/img/floor/LC4_02.png', '商品介绍: 统一标准', '中国', '499.00'),
(4, '标题', 'http://127.0.0.1:3000/img/floor/LC4_03.png', '商品介绍: 统一标准', '中国', '499.00'),
(5, '标题', 'http://127.0.0.1:3000/img/floor/LC4_04.png', '商品介绍: 统一标准', '中国', '499.00'),
(6, '标题', 'http://127.0.0.1:3000/img/floor/LC4_05.png', '商品介绍: 统一标准', '中国', '499.00'),
(7, '标题', 'http://127.0.0.1:3000/img/floor/LC4_06.png', '商品介绍: 统一标准', '中国', '499.00'),
(8, '标题', 'http://127.0.0.1:3000/img/floor/LC4_big_02.png', '商品介绍: 统一标准', '中国', '499.00');

--LC5
CREATE TABLE `fx_floor_LC5` (
  `fid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `place` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fx_floor_LC5` (`fid`, `title`, `img`, `details`, `place`, `price`) VALUES
(1, '标题', 'http://127.0.0.1:3000/img/floor/LC5_big_01.png', '商品介绍: 统一标准', '中国', '499.00'),
(2, '标题', 'http://127.0.0.1:3000/img/floor/LC5_01.png', '商品介绍: 统一标准', '中国', '499.00'),
(3, '标题', 'http://127.0.0.1:3000/img/floor/LC5_02.png', '商品介绍: 统一标准', '中国', '499.00'),
(4, '标题', 'http://127.0.0.1:3000/img/floor/LC5_03.png', '商品介绍: 统一标准', '中国', '499.00'),
(5, '标题', 'http://127.0.0.1:3000/img/floor/LC5_04.png', '商品介绍: 统一标准', '中国', '499.00'),
(6, '标题', 'http://127.0.0.1:3000/img/floor/LC5_05.png', '商品介绍: 统一标准', '中国', '499.00'),
(7, '标题', 'http://127.0.0.1:3000/img/floor/LC5_06.png', '商品介绍: 统一标准', '中国', '499.00'),
(8, '标题', 'http://127.0.0.1:3000/img/floor/LC5_big_02.png', '商品介绍: 统一标准', '中国', '499.00');

-- --------------------------------------------------------

-- 楼层主图
-- 表的结构 `fx_floor_LC_zt`
--
CREATE TABLE `fx_floor_LC_zt` (
  `fid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fx_floor_LC_zt` (`fid`, `title`, `img`) VALUES
(1, '标题', 'http://127.0.0.1:3000/img/floor/LC1_zt.png'),
(2, '标题', 'http://127.0.0.1:3000/img/floor/LC2_zt.png'),
(3, '标题', 'http://127.0.0.1:3000/img/floor/LC3_zt.png'),
(4, '标题', 'http://127.0.0.1:3000/img/floor/LC4_zt.png'),
(5, '标题', 'http://127.0.0.1:3000/img/floor/LC5_zt.png'),
(6, '标题', 'http://127.0.0.1:3000/img/floor/LC6_zt.png'),
(7, '标题', 'http://127.0.0.1:3000/img/floor/LC7_zt.png'),
(7, '标题', 'http://127.0.0.1:3000/img/floor/LC8_zt.png'),
(8, '标题', 'http://127.0.0.1:3000/img/floor/LC9_zt.png');
-- --------------------------------------------------------

-- --------------------------------------------------------

-- 资讯页面数据
-- 表的结构 `fx_product`
--
CREATE TABLE `fx_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `url` varchar(64) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fx_product` (`pid`, `title`, `time`, `url` ,`img`) VALUES
(1, 'Whilst Black Mirror isnt a Netflix show which we have binged just yet its on our to-do lis...', 33, 'www.thecoolector.com', 'http://127.0.0.1:3000/img/product/zt01.png'),
(2, 'Whilst Black Mirror isnt a Netflix show which we have binged just yet it s on our to-do lis...', 23, 'www.thecoolector.com', 'http://127.0.0.1:3000/img/product/zt02.png'),
(3, 'Whilst Black Mirror isnt a Netflix show which we have binged just yet its on our to-do lis...', 13, 'www.thecoolector.com', 'http://127.0.0.1:3000/img/product/zt03.png'),
(4, 'Whilst Black Mirror isnt a Netflix show which we have binged just yet its on our to-do lis...', 6, 'www.thecoolector.com', 'http://127.0.0.1:3000/img/product/zt04.png'),
(5, 'Whilst Black Mirror isnt a Netflix show which we have binged just yet its on our to-do lis...', 3, 'www.thecoolector.com', 'http://127.0.0.1:3000/img/product/zt05.png');
-- --------------------------------------------------------

-- 商品列表页面
-- 表的结构 `fx_product_list`
--
CREATE TABLE `fx_product_list` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO fx_product_list VALUES(1, '五星级鞋垫', 'http://127.0.0.1:3000/img/product_list/01.png', '减震舒适透气硅胶鞋垫', '99.00');
INSERT INTO fx_product_list VALUES(2, '野外求生磨力包', 'http://127.0.0.1:3000/img/product_list/02.png', '刀砍斧凿也无法让包身受半点伤害', '999.00');
INSERT INTO fx_product_list VALUES(3, '82年拉菲', 'http://127.0.0.1:3000/img/product_list/03.png', '红酒之王带来的身心愉悦', '12999.00');
INSERT INTO fx_product_list VALUES(4, '精致车载吊饰', 'http://127.0.0.1:3000/img/product_list/04.png', '细节的尽善尽美让旅途不再乏味', '199.00');
INSERT INTO fx_product_list VALUES(5, 'mini智能音箱', 'http://127.0.0.1:3000/img/product_list/05.png', '意想不到的聪明伶俐', '399.00');
INSERT INTO fx_product_list VALUES(6, '防虫喷雾', 'http://127.0.0.1:3000/img/product_list/06.png', '野外探险的不二之选', '99.00');
INSERT INTO fx_product_list VALUES(7, '折叠电脑桌', 'http://127.0.0.1:3000/img/product_list/07.png', '将省空间发挥到极致', '288.00');
INSERT INTO fx_product_list VALUES(8, '复古公文包', 'http://127.0.0.1:3000/img/product_list/08.png', '不仅尽显绅士风范还空间大', '388.00');
INSERT INTO fx_product_list VALUES(9, '蓝水晶', 'http://127.0.0.1:3000/img/product_list/09.png', '八面玲珑说的就是在下了', '9999.00');
INSERT INTO fx_product_list VALUES(10, '多功能脚手架', 'http://127.0.0.1:3000/img/product_list/10.png', '如果只是用来当零部件那就太屈才了', '199.00');
INSERT INTO fx_product_list VALUES(11, '智能手环', 'http://127.0.0.1:3000/img/product_list/11.png', '有多智能呢?至少10以内的加减法不在话下', '239.00');
INSERT INTO fx_product_list VALUES(12, '降暑贴', 'http://127.0.0.1:3000/img/product_list/12.png', '炎炎夏日我能救你于水火', '99.00');
INSERT INTO fx_product_list VALUES(13, '长长的水杯', 'http://127.0.0.1:3000/img/product_list/13.png', '想象不到的大容量', '178.00');
INSERT INTO fx_product_list VALUES(14, '太空求生仓', 'http://127.0.0.1:3000/img/product_list/14.png', '让科幻走进现实', '999999.00');
INSERT INTO fx_product_list VALUES(15, '砚台的全新打开方式', 'http://127.0.0.1:3000/img/product_list/15.png', '这么美丽动人的砚台让你的书法层次不断提升', '499.00');
INSERT INTO fx_product_list VALUES(16, '童话级别的灯光', 'http://127.0.0.1:3000/img/product_list/16.png', '让梦幻照进现实', '188.00');
INSERT INTO fx_product_list VALUES(17, 'PROMISE', 'http://127.0.0.1:3000/img/product_list/17.png', '这其实是一个变身器', '888.00');
INSERT INTO fx_product_list VALUES(18, '牛魔幻影手机吊饰', 'http://127.0.0.1:3000/img/product_list/18.png', '从游戏中走向现实的妖族大魔王', '99.00');
INSERT INTO fx_product_list VALUES(19, '科技感满满的鼠标垫', 'http://127.0.0.1:3000/img/product_list/19.png', '游戏御用鼠标垫,激情洋溢的竞技场怎么少得了它', '999.00');
INSERT INTO fx_product_list VALUES(20, '男士保湿乳', 'http://127.0.0.1:3000/img/product_list/20.png', '秋冬换季的不二之选', '129.00');
INSERT INTO fx_product_list VALUES(21, '充满灵动的无人机', 'http://127.0.0.1:3000/img/product_list/21.png', '复杂地形不存在的,天高任我飞', '4999.00');
INSERT INTO fx_product_list VALUES(22, 'D800单反', 'http://127.0.0.1:3000/img/product_list/22.png', '能够洞悉宇宙极致拍摄', '29999.00');
INSERT INTO fx_product_list VALUES(23, 't500硬盘', 'http://127.0.0.1:3000/img/product_list/23.png', '这就是机皇体质', '1299.00');
INSERT INTO fx_product_list VALUES(24, '精致得不像话的钢笔', 'http://127.0.0.1:3000/img/product_list/24.png', '锋芒毕露,下笔如有神', '1999.00');
INSERT INTO fx_product_list VALUES(25, '五星级鞋垫', 'http://127.0.0.1:3000/img/product_list/01.png', '减震舒适透气硅胶鞋垫', '99.00');
INSERT INTO fx_product_list VALUES(26, '野外求生磨力包', 'http://127.0.0.1:3000/img/product_list/02.png', '刀砍斧凿也无法让包身受半点伤害', '999.00');
INSERT INTO fx_product_list VALUES(27, '82年拉菲', 'http://127.0.0.1:3000/img/product_list/17.png', '红酒之王带来的身心愉悦', '12999.00');
INSERT INTO fx_product_list VALUES(28, '精致车载吊饰', 'http://127.0.0.1:3000/img/product_list/22.png', '细节的尽善尽美让旅途不再乏味', '199.00');
INSERT INTO fx_product_list VALUES(29, 'mini智能音箱', 'http://127.0.0.1:3000/img/product_list/04.png', '意想不到的聪明伶俐', '399.00');
INSERT INTO fx_product_list VALUES(30, '防虫喷雾', 'http://127.0.0.1:3000/img/product_list/03.png', '野外探险的不二之选', '99.00');
INSERT INTO fx_product_list VALUES(31, '折叠电脑桌', 'http://127.0.0.1:3000/img/product_list/23.png', '将省空间发挥到极致', '288.00');
INSERT INTO fx_product_list VALUES(32, '复古公文包', 'http://127.0.0.1:3000/img/product_list/08.png', '不仅尽显绅士风范还空间大', '388.00');
INSERT INTO fx_product_list VALUES(33, '蓝水晶', 'http://127.0.0.1:3000/img/product_list/09.png', '八面玲珑说的就是在下了', '9999.00');
INSERT INTO fx_product_list VALUES(34, '多功能脚手架', 'http://127.0.0.1:3000/img/product_list/19.png', '如果只是用来当零部件那就太屈才了', '199.00');
INSERT INTO fx_product_list VALUES(35, '智能手环', 'http://127.0.0.1:3000/img/product_list/11.png', '有多智能呢?至少10以内的加减法不在话下', '239.00');
INSERT INTO fx_product_list VALUES(36, '降暑贴', 'http://127.0.0.1:3000/img/product_list/12.png', '炎炎夏日我能救你于水火', '99.00');
INSERT INTO fx_product_list VALUES(37, '长长的水杯', 'http://127.0.0.1:3000/img/product_list/13.png', '想象不到的大容量', '178.00');
INSERT INTO fx_product_list VALUES(38, '太空求生仓', 'http://127.0.0.1:3000/img/product_list/14.png', '让科幻走进现实', '999999.00');
INSERT INTO fx_product_list VALUES(39, '砚台的全新打开方式', 'http://127.0.0.1:3000/img/product_list/15.png', '这么美丽动人的砚台让你的书法层次不断提升', '499.00');
INSERT INTO fx_product_list VALUES(40, '童话级别的灯光', 'http://127.0.0.1:3000/img/product_list/16.png', '让梦幻照进现实', '188.00');
INSERT INTO fx_product_list VALUES(41, 'PROMISE', 'http://127.0.0.1:3000/img/product_list/24.png', '这其实是一个变身器', '888.00');

-- product_details页面
-- 表的结构 `fx_product_details`
--
CREATE TABLE `fx_product_details` (
  `id` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fx_product_details` (`id`, `img`) VALUES
(1, 'http://127.0.0.1:3000/img/product_details/detail1_01.png'),
(2, 'http://127.0.0.1:3000/img/product_details/detail1_02.png'),
(3, 'http://127.0.0.1:3000/img/product_details/detail1_03.png'),
(4, 'http://127.0.0.1:3000/img/product_details/detail1_04.png'),
(5, 'http://127.0.0.1:3000/img/product_details/detail1_05.png'),
(6, 'http://127.0.0.1:3000/img/product_details/detail1_06.png'),
(7, 'http://127.0.0.1:3000/img/product_details/detail1_07.png');

-- 用户表
-- 表的结构 `fx_user`
--
CREATE TABLE `fx_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fx_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'clearlove', '123456', 'clear@qq.com', '13501234567', 'http://127.0.0.1:3000/img/avatar/default.png', '明凯', 1),
(2, 'uzi', '123456', 'jk@qq.com', '13501234568', 'http://127.0.0.1:3000/img/avatar/default.png', '简自豪', 1),
(3, 'mlxg', '123456', 'dou@qq.com', '13501234569', 'http://127.0.0.1:3000/img/avatar/default.png', '刘世宇', 1),
(4, 'leteme', '123456', 'ya@qq.com', '13501234560', 'http://127.0.0.1:3000/img/avatar/default.png', '严君泽', 0),
(5, '', '', '', '', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `xz_user`
--
-- ALTER TABLE `fx_user`
--   ADD PRIMARY KEY (`uid`);

-- --
-- -- 在导出的表使用AUTO_INCREMENT
-- --

-- --
-- -- 使用表AUTO_INCREMENT `fx_user`
-- --
-- ALTER TABLE `fx_user`
--   MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT; */
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS; */
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION; */

CREATE TABLE `fx_detail` (
  `id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `dimg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO fx_detail VALUES(1, '五星级鞋垫', 'http://127.0.0.1:3000/img/product_list/01.png', '减震舒适透气硅胶鞋垫', '99.00','http://127.0.0.1:3000/img/product_video/product_01.png');
INSERT INTO fx_detail VALUES(2, '野外求生磨力包', 'http://127.0.0.1:3000/img/product_list/02.png', '刀砍斧凿也无法让包身受半点伤害', '999.00','http://127.0.0.1:3000/img/product_video/product_02.png');
INSERT INTO fx_detail VALUES(3, '82年拉菲', 'http://127.0.0.1:3000/img/product_list/03.png', '红酒之王带来的身心愉悦', '12999.00','http://127.0.0.1:3000/img/product_video/product_03.png');
INSERT INTO fx_detail VALUES(4, '精致车载吊饰', 'http://127.0.0.1:3000/img/product_list/04.png', '细节的尽善尽美让旅途不再乏味', '199.00','http://127.0.0.1:3000/img/product_video/product_04.png');
INSERT INTO fx_detail VALUES(5, 'mini智能音箱', 'http://127.0.0.1:3000/img/product_list/05.png', '意想不到的聪明伶俐', '399.00','http://127.0.0.1:3000/img/product_video/product_05.png');
INSERT INTO fx_detail VALUES(6, '防虫喷雾', 'http://127.0.0.1:3000/img/product_list/06.png', '野外探险的不二之选', '99.00','http://127.0.0.1:3000/img/product_video/product_06.png');
INSERT INTO fx_detail VALUES(7, '折叠电脑桌', 'http://127.0.0.1:3000/img/product_list/07.png', '将省空间发挥到极致', '288.00','http://127.0.0.1:3000/img/product_video/product_07.png');
INSERT INTO fx_detail VALUES(8, '复古公文包', 'http://127.0.0.1:3000/img/product_list/08.png', '不仅尽显绅士风范还空间大', '388.00','http://127.0.0.1:3000/img/product_video/product_08.png');
INSERT INTO fx_detail VALUES(9, '蓝水晶', 'http://127.0.0.1:3000/img/product_list/09.png', '八面玲珑说的就是在下了', '9999.00','http://127.0.0.1:3000/img/product_video/product_09.png');
INSERT INTO fx_detail VALUES(10, '多功能脚手架', 'http://127.0.0.1:3000/img/product_list/10.png', '如果只是用来当零部件那就太屈才了', '199.00','http://127.0.0.1:3000/img/product_video/product_10.png');
INSERT INTO fx_detail VALUES(11, '智能手环', 'http://127.0.0.1:3000/img/product_list/11.png', '有多智能呢?至少10以内的加减法不在话下', '239.00','http://127.0.0.1:3000/img/product_video/recommend_01.png');
INSERT INTO fx_detail VALUES(12, '降暑贴', 'http://127.0.0.1:3000/img/product_list/12.png', '炎炎夏日我能救你于水火', '99.00','http://127.0.0.1:3000/img/product_video/recommend_02.png');
INSERT INTO fx_detail VALUES(13, '长长的水杯', 'http://127.0.0.1:3000/img/product_list/13.png', '想象不到的大容量', '178.00','http://127.0.0.1:3000/img/product_video/recommend_03.png');
INSERT INTO fx_detail VALUES(14, '太空求生仓', 'http://127.0.0.1:3000/img/product_list/14.png', '让科幻走进现实', '999999.00','http://127.0.0.1:3000/img/product_video/recommend_04.png');
INSERT INTO fx_detail VALUES(15, '砚台的全新打开方式', 'http://127.0.0.1:3000/img/product_list/15.png', '这么美丽动人的砚台让你的书法层次不断提升', '499.00','http://127.0.0.1:3000/img/product_video/recommend_05.png');
INSERT INTO fx_detail VALUES(16, '童话级别的灯光', 'http://127.0.0.1:3000/img/product_list/16.png', '让梦幻照进现实', '188.00','http://127.0.0.1:3000/img/product_video/recommend_06.png');
INSERT INTO fx_detail VALUES(17, 'PROMISE', 'http://127.0.0.1:3000/img/product_list/17.png', '这其实是一个变身器', '888.00','http://127.0.0.1:3000/img/product_video/recommend_07.png');
INSERT INTO fx_detail VALUES(18, '牛魔幻影手机吊饰', 'http://127.0.0.1:3000/img/product_list/18.png', '从游戏中走向现实的妖族大魔王', '99.00','http://127.0.0.1:3000/img/product_video/recommend_08.png');
INSERT INTO fx_detail VALUES(19, '科技感满满的鼠标垫', 'http://127.0.0.1:3000/img/product_list/19.png', '游戏御用鼠标垫,激情洋溢的竞技场怎么少得了它', '999.00','http://127.0.0.1:3000/img/product_video/recommend_02.png');
INSERT INTO fx_detail VALUES(20, '男士保湿乳', 'http://127.0.0.1:3000/img/product_list/20.png', '秋冬换季的不二之选', '129.00','http://127.0.0.1:3000/img/product_video/recommend_01.png');
INSERT INTO fx_detail VALUES(21, '充满灵动的无人机', 'http://127.0.0.1:3000/img/product_list/21.png', '复杂地形不存在的,天高任我飞', '4999.00','http://127.0.0.1:3000/img/product_video/product_01.png');
INSERT INTO fx_detail VALUES(22, 'D800单反', 'http://127.0.0.1:3000/img/product_list/22.png', '能够洞悉宇宙极致拍摄', '29999.00','http://127.0.0.1:3000/img/product_video/product_02.png');
INSERT INTO fx_detail VALUES(23, 't500硬盘', 'http://127.0.0.1:3000/img/product_list/23.png', '这就是机皇体质', '1299.00','http://127.0.0.1:3000/img/product_video/product_03.png');
INSERT INTO fx_detail VALUES(24, '精致得不像话的钢笔', 'http://127.0.0.1:3000/img/product_list/24.png', '锋芒毕露,下笔如有神', '1999.00','http://127.0.0.1:3000/img/product_video/product_04.png');
INSERT INTO fx_detail VALUES(25, '五星级鞋垫', 'http://127.0.0.1:3000/img/product_list/01.png', '减震舒适透气硅胶鞋垫', '99.00','http://127.0.0.1:3000/img/product_video/product_05.png');
INSERT INTO fx_detail VALUES(26, '野外求生磨力包', 'http://127.0.0.1:3000/img/product_list/02.png', '刀砍斧凿也无法让包身受半点伤害', '999.00','http://127.0.0.1:3000/img/product_video/product_06.png');
INSERT INTO fx_detail VALUES(27, '82年拉菲', 'http://127.0.0.1:3000/img/product_list/17.png', '红酒之王带来的身心愉悦', '12999.00','http://127.0.0.1:3000/img/product_video/product_07.png');
INSERT INTO fx_detail VALUES(28, '精致车载吊饰', 'http://127.0.0.1:3000/img/product_list/22.png', '细节的尽善尽美让旅途不再乏味', '199.00','http://127.0.0.1:3000/img/product_video/product_08.png');
INSERT INTO fx_detail VALUES(29, 'mini智能音箱', 'http://127.0.0.1:3000/img/product_list/04.png', '意想不到的聪明伶俐', '399.00','http://127.0.0.1:3000/img/product_video/product_06.png');
INSERT INTO fx_detail VALUES(30, '防虫喷雾', 'http://127.0.0.1:3000/img/product_list/03.png', '野外探险的不二之选', '99.00','http://127.0.0.1:3000/img/product_video/product_01.png');
INSERT INTO fx_detail VALUES(31, '折叠电脑桌', 'http://127.0.0.1:3000/img/product_list/23.png', '将省空间发挥到极致', '288.00','http://127.0.0.1:3000/img/product_video/recommend_01.png');
INSERT INTO fx_detail VALUES(32, '复古公文包', 'http://127.0.0.1:3000/img/product_list/08.png', '不仅尽显绅士风范还空间大', '388.00','http://127.0.0.1:3000/img/product_video/recommend_02.png');
INSERT INTO fx_detail VALUES(33, '蓝水晶', 'http://127.0.0.1:3000/img/product_list/09.png', '八面玲珑说的就是在下了', '9999.00','http://127.0.0.1:3000/img/product_video/recommend_03.png');
INSERT INTO fx_detail VALUES(34, '多功能脚手架', 'http://127.0.0.1:3000/img/product_list/19.png', '如果只是用来当零部件那就太屈才了', '199.00','http://127.0.0.1:3000/img/product_video/recommend_04.png');
INSERT INTO fx_detail VALUES(35, '智能手环', 'http://127.0.0.1:3000/img/product_list/11.png', '有多智能呢?至少10以内的加减法不在话下', '239.00','http://127.0.0.1:3000/img/product_video/recommend_05.png');
INSERT INTO fx_detail VALUES(36, '降暑贴', 'http://127.0.0.1:3000/img/product_list/12.png', '炎炎夏日我能救你于水火', '99.00','http://127.0.0.1:3000/img/product_video/recommend_06.png');
INSERT INTO fx_detail VALUES(37, '长长的水杯', 'http://127.0.0.1:3000/img/product_list/13.png', '想象不到的大容量', '178.00','http://127.0.0.1:3000/img/product_video/recommend_07.png');
INSERT INTO fx_detail VALUES(38, '太空求生仓', 'http://127.0.0.1:3000/img/product_list/14.png', '让科幻走进现实', '999999.00','http://127.0.0.1:3000/img/product_video/recommend_08.png');
INSERT INTO fx_detail VALUES(39, '砚台的全新打开方式', 'http://127.0.0.1:3000/img/product_list/15.png', '这么美丽动人的砚台让你的书法层次不断提升', '499.00','http://127.0.0.1:3000/img/product_video/recommend_06.png');
INSERT INTO fx_detail VALUES(40, '童话级别的灯光', 'http://127.0.0.1:3000/img/product_list/16.png', '让梦幻照进现实', '188.00', 'http://127.0.0.1:3000/img/product_video/recommend_01.png');
INSERT INTO fx_detail VALUES(41, 'PROMISE', 'http://127.0.0.1:3000/img/product_list/24.png', '这其实是一个变身器', '888.00', 'http://127.0.0.1:3000/img/product_video/recommend_02.png');
