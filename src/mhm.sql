/*
 Navicat Premium Data Transfer

 Source Server         : mhm
 Source Server Type    : MongoDB
 Source Server Version : 40006
 Source Host           : localhost:27017
 Source Schema         : mhm

 Target Server Type    : MongoDB
 Target Server Version : 40006
 File Encoding         : 65001

 Date: 13/11/2019 16:02:05
*/


// ----------------------------
// Collection structure for Client
// ----------------------------
db.getCollection("Client").drop();
db.createCollection("Client");

// ----------------------------
// Documents of Client
// ----------------------------
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f88"),
    src: "https://www.maihaome.com/file/upload/201611/09/160632391.png",
    title: "艾尔之光",
    thumbs: [
        "账号",
        "装备",
        "材料",
        "ED",
        "点卡代充",
        "礼包"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f89"),
    src: "https://www.maihaome.com/file/upload/201611/09/160832471.png",
    title: "炉石传说",
    thumbs: [
        "账号",
        "礼包"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f8a"),
    src: "https://www.maihaome.com/file/upload/201706/22/16254866487156.png",
    title: "激战2",
    thumbs: [
        "账号",
        "装备",
        "金币",
        "材料",
        "点卡代充"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f8b"),
    src: "https://www.maihaome.com/file/upload/201706/01/141456401.png",
    title: "冒险岛2",
    thumbs: [
        "账号",
        "点卡代充",
        "游戏币",
        "装备",
        "材料"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f8c"),
    src: "https://www.maihaome.com/file/upload/201808/26/14415616487156.jpg",
    title: "古剑奇谭ol",
    thumbs: [
        "账号",
        "装备",
        "金币",
        "材料",
        "礼包",
        "点卡代充"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f8d"),
    src: "https://www.maihaome.com/file/upload/201611/09/150724761.png",
    title: "三国杀",
    thumbs: [
        "账号",
        "银两",
        "礼包",
        "点卡代充"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f8e"),
    src: "https://www.maihaome.com/file/upload/201611/09/155806511.png",
    title: "封印者",
    thumbs: [
        "账号",
        "装备",
        "游戏币",
        "材料",
        "点卡代充"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f8f"),
    src: "https://www.maihaome.com/file/upload/201611/09/154221981.png",
    title: "英雄联盟",
    thumbs: [
        "账号",
        "皮肤",
        "礼包",
        "点券代充"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f90"),
    src: "https://www.maihaome.com/file/upload/201611/09/151904821.png",
    title: "300英雄",
    thumbs: [
        "账号",
        "点卡代充",
        "礼包"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f91"),
    src: "https://www.maihaome.com/file/upload/201701/04/14055836487156.jpg",
    title: "Dota2",
    thumbs: [
        "账号",
        "装备",
        "礼包",
        "刀币代充"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f92"),
    src: "https://www.maihaome.com/file/upload/201611/09/153821461.png",
    title: "地下城与勇士",
    thumbs: [
        "账号",
        "装备",
        "金币",
        "礼包",
        "点券代充"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f93"),
    src: "https://www.maihaome.com/file/upload/201611/09/153451791.png",
    title: "流放之路",
    thumbs: [
        "账号",
        "装备",
        "通货",
        "点卡"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f94"),
    src: "https://www.maihaome.com/file/upload/201611/09/153139951.png",
    title: "剑侠情缘三",
    thumbs: [
        "账号",
        "装备",
        "金币",
        "礼包",
        "点卡代充"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f95"),
    src: "https://www.maihaome.com/file/upload/201611/09/152202481.png",
    title: "NBA2k",
    thumbs: [
        "账号",
        "礼包",
        "点券代充"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f96"),
    src: "https://www.maihaome.com/file/upload/201611/09/152825901.png",
    title: "洛奇英雄传",
    thumbs: [
        "账号",
        "装备",
        "金币",
        "礼包",
        "点卡代充"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f97"),
    src: "https://www.maihaome.com/file/upload/201611/09/152522121.png",
    title: "穿越火线",
    thumbs: [
        "账号",
        "礼包",
        "点券代充"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f98"),
    src: "https://www.maihaome.com/file/upload/201611/09/153631621.png",
    title: "集换英雄hex",
    thumbs: [
        "账号",
        "卡牌",
        "游戏币",
        "点卡代充",
        "白金币",
        "装备"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f99"),
    src: "https://www.maihaome.com/file/upload/201611/09/161051161.png",
    title: "星际战甲",
    thumbs: [
        "账号",
        "装备",
        "礼包",
        "点卡代充"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f9a"),
    src: "https://www.maihaome.com/file/upload/201611/09/161342141.png",
    title: "机动战士敢达",
    thumbs: [
        "账号",
        "装备",
        "点卡代充"
    ]
} ]);
db.getCollection("Client").insert([ {
    _id: ObjectId("5dcb60795795fa6fb2732f9b"),
    src: "https://www.maihaome.com/file/upload/201603/08/102026381.png",
    title: "传奇永恒",
    thumbs: [
        "账号",
        "装备",
        "游戏币",
        "礼包",
        "点卡代充"
    ]
} ]);

// ----------------------------
// Collection structure for ELSWORD_list
// ----------------------------
db.getCollection("ELSWORD_list").drop();
db.createCollection("ELSWORD_list");

// ----------------------------
// Documents of ELSWORD_list
// ----------------------------
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732fef"),
    src: "https://www.maihaome.com/file/upload/201910/30/2210271117455.png.thumb.png",
    title: "坐骑召唤石：飞狐-赤灵 狐狸 骑宠",
    region: "艾尔之光 / 华中华北区 / 盖亚  ",
    inventory: "剩余库存 1 ",
    price: "299.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ff0"),
    src: "https://www.maihaome.com/file/upload/201910/30/2215489517455.png.thumb.png",
    title: "【已封】魅惑玫瑰 会冒心心 脸下",
    region: "艾尔之光 / 华中华北区 / 盖亚  ",
    inventory: "剩余库存 1 ",
    price: "160.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ff1"),
    src: "https://www.maihaome.com/file/upload/201910/30/2218306717455.png.thumb.png",
    title: "【已封】银河爱心护腕 会冒心心 手臂",
    region: "艾尔之光 / 华中华北区 / 盖亚  ",
    inventory: "剩余库存 1 ",
    price: "188.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ff2"),
    src: "https://www.maihaome.com/file/upload/201911/11/0419497917455.png.thumb.png",
    title: "1亿ED （1E ed) 包邮",
    region: "艾尔之光 / 华中华北区 / 盖亚  ",
    inventory: "剩余库存 1",
    price: "4.30 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ff3"),
    src: "https://www.maihaome.com/file/upload/201911/12/21290424428926.png.thumb.png",
    title: "【已封】+10艾丽阿诺德下衣,，95级+10米色下衣，+10新村 11村 下衣，+10 艾丽阿诺德下衣,有货放心拍",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 ",
    price: "146.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ff4"),
    src: "https://www.maihaome.com/file/upload/201910/08/20430977212759.jpg.thumb.jpg",
    title: "【已封】娜薇火神罗索九件套（左五+镜子+翅膀+残像+眼罩）会员店铺快速发货拉比火神全套laby火神九件套",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 2 ",
    price: "510.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/7.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ff5"),
    src: "https://www.maihaome.com/file/upload/201907/16/23402653212759.jpg.thumb.jpg",
    title: "【已封】全职业通用沙漠之星九件套宝箱艾索德爱莎蕾娜雷文伊芙澄艾拉艾丽希斯艾迪露希尔萝丝艾因娜薇会员店铺快速发货沙星全套",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 8 ",
    price: "550.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/7.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ff6"),
    src: "https://www.maihaome.com/file/upload/201709/24/01511299212759.png.thumb.png",
    title: "华东一区 10E包邮",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 42",
    price: "38.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/7.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ff7"),
    src: "https://www.maihaome.com/file/upload/201911/12/2108056319369.jpg.thumb.jpg",
    title: "【已封】沙漠之星武器宝箱",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 ",
    price: "278.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/dan.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ff8"),
    src: "https://www.maihaome.com/file/upload/201811/14/17502151487170.png.thumb.png",
    title: "【已封】百花缭乱左五箱子 百花左5 宝箱 全职业通用 开自己职业的左五，会员店铺快速发货",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 3 ",
    price: "250.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/7.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ff9"),
    src: "https://www.maihaome.com/file/upload/201610/25/09443750487146.png.thumb.png",
    title: "华北 旧版迅速魔法石(动作迅速+移动力+跳跃力)100个1组，会员店铺快速发货",
    region: "艾尔之光 / 华中华北区 / 盖亚  ",
    inventory: "剩余库存 76 ",
    price: "360.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ffa"),
    src: "https://www.maihaome.com/file/upload/201603/13/16060471487151.png.thumb.png",
    title: "【已封】艾索德纳斯德战场套装左5右1（光刀） 红毛旧高达6 有纳斯德长剑",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1",
    price: "999.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/7.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ffb"),
    src: "https://www.maihaome.com/file/upload/201811/14/17594758487172.png.thumb.png",
    title: "【已封】艾拉新冰百花缭乱9件上下手脚头右四 左5+右4",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 ",
    price: "899.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/6.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ffc"),
    src: "https://www.maihaome.com/file/upload/201607/09/16175648487151.png.thumb.png",
    title: "【已封】蕾娜赫尼尔-异界的支配者9件套（左5+武器+皇冠+印章+别针） 蕾娜时空9",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 2 ",
    price: "1150.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/7.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ffd"),
    src: "https://www.maihaome.com/file/upload/201607/19/09463079487149.png.thumb.png",
    title: "【已封】雷文赫尼尔-异界的支配者9件套（左5+武器+皇冠+印章+别针） 雷文时空9",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 2 ",
    price: "999.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/6.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732ffe"),
    src: "https://www.maihaome.com/file/upload/201603/03/15474012487149.jpg.thumb.jpg",
    title: "【已封】伊芙大地之神盖亚8件套（伊芙）伊芙盖亚",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 ",
    price: "550.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/6.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2732fff"),
    src: "https://www.maihaome.com/file/upload/201808/31/15140619487170.png.thumb.png",
    title: "【已封】露 国际象棋-竞技场全套9件（左5+武器+翅膀+耳环+皇冠）",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 ",
    price: "920.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/7.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733000"),
    src: "https://www.maihaome.com/file/upload/201811/14/18000147487172.png.thumb.png",
    title: "【已封】爱莎新冰百花缭乱9件上下手脚头右四 左5+右4",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 ",
    price: "899.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/6.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733001"),
    src: "https://www.maihaome.com/file/upload/201603/25/16153480487151.png.thumb.png",
    title: "华东2次元的能量石 二次元的能量石一个(不是一组)，会员店铺快速发货",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 2",
    price: "0.60 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/7.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733002"),
    src: "https://www.maihaome.com/file/upload/201610/25/09450865487146.png.thumb.png",
    title: "华北 旧版迅速魔法石(动作迅速+移动力+跳跃力)50个半组，会员店铺快速发货",
    region: "艾尔之光 / 华中华北区 / 盖亚  ",
    inventory: "剩余库存 70 ",
    price: "180.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733003"),
    src: "https://www.maihaome.com/file/upload/201604/24/16153859487151.png.thumb.png",
    title: "华东一区 强化的符咒LV.7/加7/+7强化券/强化卷/可交易一张，会员店铺快速发货",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 4",
    price: "2.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/7.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733004"),
    src: "https://www.maihaome.com/file/upload/201811/14/18001252487172.png.thumb.png",
    title: "【已封】爱莎新冰百花缭乱9件上下手脚头右四 左5+右4",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 ",
    price: "899.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/6.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733005"),
    src: "https://www.maihaome.com/file/upload/201607/09/16183462487151.png.thumb.png",
    title: "【已封】爱莎赫尼尔-异界的支配者9件套（左5+武器+皇冠+印章+别针） 爱莎时空9",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 ",
    price: "850.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/7.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733006"),
    src: "https://www.maihaome.com/file/upload/201603/03/15492962487149.jpg.thumb.jpg",
    title: "【已封】爱莎大地之神盖亚8件套（爱莎）爱莎盖亚",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 ",
    price: "480.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/6.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733007"),
    src: "https://www.maihaome.com/file/upload/201911/12/23515753471905.png.thumb.png",
    title: "【已封】蓝色平衡的艾尔之泪碎片（手套）艾尔之泪等级28LV",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1",
    price: "25.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733008"),
    src: "https://www.maihaome.com/file/upload/201911/12/23503194429794.png.thumb.png",
    title: "【已封】艾拉 艾尔搜查队上校左五（军帽）gm左五",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1",
    price: "65.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733009"),
    src: "https://www.maihaome.com/file/upload/201911/12/23505027471905.png.thumb.png",
    title: "【已封】蓝色平衡的艾尔之泪碎片（鞋子）艾尔之泪等级28LV",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1",
    price: "14.50 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb273300a"),
    src: "https://www.maihaome.com/file/upload/201911/12/23494369431513.png.thumb.png",
    title: "【已封】爱莎佩尔基萨斯-贪欲的相位发型 爱莎火龙2发型",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 ",
    price: "350.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb273300b"),
    src: "https://www.maihaome.com/file/upload/201911/12/23454813471905.png.thumb.png",
    title: "【已封】弧光天使上衣 （爱莎）",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 2",
    price: "15.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb273300c"),
    src: "https://www.maihaome.com/file/upload/201911/12/23444830471905.png.thumb.png",
    title: "【已封】弧光天使发型（爱莎）",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1",
    price: "50.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb273300d"),
    src: "https://www.maihaome.com/file/upload/201911/12/23432993471905.png.thumb.png",
    title: "【已封】弧光天使尾翼（爱莎）",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 80.00 / 件",
    price: "80.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb273300e"),
    src: "https://www.maihaome.com/file/upload/201911/12/23415015471905.png.thumb.png",
    title: "【已封】弧光天使翅膀（爱莎）",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 4",
    price: "80.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb273300f"),
    src: "https://www.maihaome.com/file/upload/201911/12/23314947471905.png.thumb.png",
    title: "【已封】蓝色破坏的艾尔之泪碎片（上衣）磁力发电机伤害增加+12%（萝丝）",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1",
    price: "30.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733010"),
    src: "https://www.maihaome.com/file/upload/201911/12/23302779471905.png.thumb.png",
    title: "【已封】蓝色破坏的艾尔之泪碎片（下衣）爆发激光伤害增加+12%（伊芙）",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1",
    price: "70.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733011"),
    src: "https://www.maihaome.com/file/upload/201911/12/23284886471905.png.thumb.png",
    title: "【已封】蓝色破坏的艾尔之泪碎片（下衣）爆发激光伤害增加+11%（伊芙）",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1",
    price: "25.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733012"),
    src: "https://www.maihaome.com/file/upload/201911/12/23263282471905.png.thumb.png",
    title: "【已封】蓝色熟练的艾尔之泪碎片（手套）所有技能伤害+【强化等级*5】%",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 ",
    price: "290.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733013"),
    src: "https://www.maihaome.com/file/upload/201911/12/23244098471905.png.thumb.png",
    title: "【已封】红色平衡的艾尔之泪碎片（鞋子）艾尔之泪等级28LV",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 2",
    price: "19.50 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733014"),
    src: "https://www.maihaome.com/file/upload/201911/12/23214824538224.png.thumb.png",
    title: "13Eed",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1",
    price: "45.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733015"),
    src: "https://www.maihaome.com/file/upload/201911/12/23181890492119.png.thumb.png",
    title: "黄蜡石 13村防具 虹霓魔防具 材料 10000个（即一组）1W",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 9",
    price: "22.50 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733016"),
    src: "https://www.maihaome.com/file/upload/201911/12/23124595431513.png.thumb.png",
    title: "【已封】希尔太阳神索雷斯太阳之影（希尔） 希尔虚翼 希尔虚e 希尔虚翅",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 ",
    price: "320.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733017"),
    src: "https://www.maihaome.com/mobile/static/img/nopic-60.png",
    title: "【已封】爱莎黑千生饰品右2 翅膀 地阵",
    region: "艾尔之光 / 华中华北区 / 盖亚  ",
    inventory: "剩余库存 1",
    price: "50.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/dan.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733018"),
    src: "https://www.maihaome.com/mobile/static/img/nopic-60.png",
    title: "【已封】沙漠之星 沙星 左五 左5 娜薇 拉比 laby",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1",
    price: "97.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb2733019"),
    src: "https://www.maihaome.com/mobile/static/img/nopic-60.png",
    title: "【已封】艾拉沙星右4 沙漠之星右4 武器满暴击极大",
    region: "艾尔之光 / 华东区 / 索雷斯  ",
    inventory: "剩余库存 1 ",
    price: "400.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/dan.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb273301a"),
    src: "https://www.maihaome.com/file/upload/201911/12/22583689577119.png.thumb.png",
    title: "幸运强化卷轴lv.10",
    region: "艾尔之光 / 华中华北区 / 盖亚  ",
    inventory: "剩余库存 1 ",
    price: "420.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb273301b"),
    src: "https://www.maihaome.com/file/upload/201911/12/22542897577119.png.thumb.png",
    title: "【已封】沙漠之星：沙漠月光（伊芙）沙漠之星饰品耳环",
    region: "艾尔之光 / 华中华北区 / 盖亚  ",
    inventory: "剩余库存 1",
    price: "33.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb273301c"),
    src: "https://www.maihaome.com/file/upload/201911/12/22525115577119.png.thumb.png",
    title: "【已封】沙漠之星：沙漠月光（艾丽希斯）姐姐沙漠之星饰品耳环",
    region: "艾尔之光 / 华中华北区 / 盖亚  ",
    inventory: "剩余库存 1",
    price: "33.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb273301d"),
    src: "https://www.maihaome.com/file/upload/201911/12/22505316577119.png.thumb.png",
    title: "【已封】沙漠之星：沙漠月光（澄）沙漠之星饰品耳环",
    region: "艾尔之光 / 华中华北区 / 盖亚  ",
    inventory: "剩余库存 1",
    price: "33.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);
db.getCollection("ELSWORD_list").insert([ {
    _id: ObjectId("5dcb66165795fa6fb273301e"),
    src: "https://www.maihaome.com/file/upload/201911/12/22453515577119.png.thumb.png",
    title: "幸运强化卷轴lv.10",
    region: "艾尔之光 / 华中华北区 / 盖亚  ",
    inventory: "剩余库存 1 ",
    price: "420.00 / 件",
    smSrc1: "https://www.maihaome.com/newapp/img/ji.png",
    smSrc2: "https://www.maihaome.com/newapp/img/5.png"
} ]);

// ----------------------------
// Collection structure for Game_nav
// ----------------------------
db.getCollection("Game_nav").drop();
db.createCollection("Game_nav");

// ----------------------------
// Documents of Game_nav
// ----------------------------
db.getCollection("Game_nav").insert([ {
    _id: ObjectId("5dcb65a95795fa6fb2732fe7"),
    src: "https://www.maihaome.com/file/upload/201611/09/160632391.png",
    title: "艾尔之光"
} ]);
db.getCollection("Game_nav").insert([ {
    _id: ObjectId("5dcb65a95795fa6fb2732fe8"),
    src: "https://www.maihaome.com/file/upload/201611/09/160832471.png",
    title: "炉石传说"
} ]);
db.getCollection("Game_nav").insert([ {
    _id: ObjectId("5dcb65a95795fa6fb2732fe9"),
    src: "https://www.maihaome.com/file/upload/201611/25/140233291.png",
    title: "命运-冠位指定（FGO）"
} ]);
db.getCollection("Game_nav").insert([ {
    _id: ObjectId("5dcb65a95795fa6fb2732fea"),
    src: "https://www.maihaome.com/file/upload/201712/07/13052916487156.jpg",
    title: "王者荣耀"
} ]);
db.getCollection("Game_nav").insert([ {
    _id: ObjectId("5dcb65b35795fa6fb2732feb"),
    src: "https://www.maihaome.com/file/upload/201611/09/153451791.png",
    title: "流放之路"
} ]);
db.getCollection("Game_nav").insert([ {
    _id: ObjectId("5dcb65b35795fa6fb2732fec"),
    src: "https://www.maihaome.com/file/upload/201611/24/111104641.png",
    title: "崩坏3rd"
} ]);
db.getCollection("Game_nav").insert([ {
    _id: ObjectId("5dcb65b35795fa6fb2732fed"),
    src: "https://www.maihaome.com/file/upload/201803/07/10500021487156.png",
    title: "楚留香"
} ]);
db.getCollection("Game_nav").insert([ {
    _id: ObjectId("5dcb65b35795fa6fb2732fee"),
    src: "https://www.maihaome.com/file/upload/201805/02/14475576487156.png",
    title: "绝地求生：刺激战场"
} ]);

// ----------------------------
// Collection structure for HomeList
// ----------------------------
db.getCollection("HomeList").drop();
db.createCollection("HomeList");

// ----------------------------
// Documents of HomeList
// ----------------------------
db.getCollection("HomeList").insert([ {
    _id: ObjectId("5dcb652f5795fa6fb2732fd2"),
    src: "https://www.maihaome.com/file/upload/201907/12/11572966504544.jpg.thumb.jpg",
    title: "能量碎片100个",
    price: "成交单价：2.10",
    quantity: "成交数量：10",
    timer: "成交时间：2019-11-12 18:56:48"
} ]);
db.getCollection("HomeList").insert([ {
    _id: ObjectId("5dcb652f5795fa6fb2732fd3"),
    src: "https://www.maihaome.com/file/upload/201910/21/10161654600754.png.thumb.png",
    title: "华中艾尔结晶（风） 艾尔结晶(风) 艾尔结晶 风 风结晶 艾尔结晶风 100个 会员快速发货",
    price: "成交单价：2.20",
    quantity: "成交数量：7",
    timer: "成交时间：2019-11-12 18:53:50"
} ]);
db.getCollection("HomeList").insert([ {
    _id: ObjectId("5dcb652f5795fa6fb2732fd4"),
    src: "https://www.maihaome.com/file/upload/201903/16/18340973428773.gif.thumb.gif",
    title: "【已封】黑框 模范生眼镜 全新",
    price: "成交单价：45.00",
    quantity: "成交数量：1",
    timer: "成交时间：2019-11-12 19:07:52"
} ]);
db.getCollection("HomeList").insert([ {
    _id: ObjectId("5dcb652f5795fa6fb2732fd5"),
    src: "https://www.maihaome.com/file/upload/201808/10/23065980499781.jpg.thumb.jpg",
    title: "祝福的时空卷轴 鉴定券 洗属性卷一张",
    price: "成交单价：1.08",
    quantity: "成交数量：50",
    timer: "成交时间：2019-11-12 18:02:09"
} ]);
db.getCollection("HomeList").insert([ {
    _id: ObjectId("5dcb652f5795fa6fb2732fd6"),
    src: "https://www.maihaome.com/file/upload/201911/06/15101465544338.png.thumb.png",
    title: "幸运强化卷轴Lv.9 +9通用强化卷 一张",
    price: "成交单价：28.00",
    quantity: "成交数量：6",
    timer: "成交时间：2019-11-12 17:55:04"
} ]);
db.getCollection("HomeList").insert([ {
    _id: ObjectId("5dcb652f5795fa6fb2732fd7"),
    src: "https://www.maihaome.com/file/upload/201911/07/2235353425667.png.thumb.png",
    title: "巨型灿烂的魔力石 一个",
    price: "成交单价：6.00",
    quantity: "成交数量：35",
    timer: "成交时间：2019-11-12 17:50:19"
} ]);
db.getCollection("HomeList").insert([ {
    _id: ObjectId("5dcb652f5795fa6fb2732fd8"),
    src: "https://www.maihaome.com/file/upload/201909/28/21434583560890.png.thumb.png",
    title: "【已封】全职业通用 沙漠之星左五 沙漠之星左5箱子 沙漠之星箱子",
    price: "成交单价：107.00",
    quantity: "成交数量：1",
    timer: "成交时间：2019-11-12 17:46:50"
} ]);
db.getCollection("HomeList").insert([ {
    _id: ObjectId("5dcb652f5795fa6fb2732fd9"),
    src: "https://www.maihaome.com/mobile/",
    title: "盖亚 1 亿ED 包邮 地(不是低价工作室金币，挫冰机搬砖散件卖的) 安全有货 纯手工包邮",
    price: "成交单价：3.70",
    quantity: "成交数量：2",
    timer: "成交时间：2019-11-12 17:49:43"
} ]);
db.getCollection("HomeList").insert([ {
    _id: ObjectId("5dcb652f5795fa6fb2732fda"),
    src: "https://www.maihaome.com/file/upload/201911/06/15101465544338.png.thumb.png",
    title: "幸运强化卷轴Lv.9 +9通用强化卷 一张",
    price: "成交单价：28.00",
    quantity: "成交数量：1",
    timer: "成交时间：2019-11-12 17:41:11"
} ]);
db.getCollection("HomeList").insert([ {
    _id: ObjectId("5dcb652f5795fa6fb2732fdb"),
    src: "https://www.maihaome.com/mobile/",
    title: "1e ED",
    price: "成交单价：3.60",
    quantity: "成交数量：1",
    timer: "成交时间：2019-11-12 17:18:33"
} ]);
db.getCollection("HomeList").insert([ {
    _id: ObjectId("5dcb652f5795fa6fb2732fdc"),
    src: "https://www.maihaome.com/file/upload/201603/13/10311328487161.jpg.thumb.jpg",
    title: "华东1E ED, 1E包邮1亿 全手动刷图辛苦费 VIP店铺快速发货，信誉保证1",
    price: "成交单价：5.00",
    quantity: "成交数量：1",
    timer: "成交时间：2019-11-12 17:18:36"
} ]);
db.getCollection("HomeList").insert([ {
    _id: ObjectId("5dcb652f5795fa6fb2732fdd"),
    src: "https://www.maihaome.com/file/upload/201909/29/19175760428449.png.thumb.png",
    title: "黄蜡石一组1W 一万个 会员快速发货",
    price: "成交单价：21.00",
    quantity: "成交数量：6",
    timer: "成交时间：2019-11-12 16:49:17"
} ]);
db.getCollection("HomeList").insert([ {
    _id: ObjectId("5dcb652f5795fa6fb2732fde"),
    src: "https://www.maihaome.com/file/upload/201910/25/11595967491093.png.thumb.png",
    title: "【已封】蓝色破坏的艾尔之泪（稀有） 地毯式轰炸12%（鞋子）",
    price: "成交单价：100.00",
    quantity: "成交数量：1",
    timer: "成交时间：2019-11-12 16:48:01"
} ]);

// ----------------------------
// Collection structure for Phone
// ----------------------------
db.getCollection("Phone").drop();
db.createCollection("Phone");

// ----------------------------
// Documents of Phone
// ----------------------------
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732faa"),
    src: "https://www.maihaome.com/file/upload/201611/25/140233291.png",
    title: "命运-冠位指定（FGO）",
    thumbs: [
        "账号",
        "代充",
        "初始号"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fab"),
    src: "https://www.maihaome.com/file/upload/201712/07/13052916487156.jpg",
    title: "王者荣耀",
    thumbs: [
        "账号",
        "代充",
        "初始号",
        "代练上星",
        "皮肤商城"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fac"),
    src: "https://www.maihaome.com/file/upload/201611/09/154445921.png",
    title: "梦100",
    thumbs: [
        "成品号",
        "初始号",
        "代充"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fad"),
    src: "https://www.maihaome.com/file/upload/201611/24/111104641.png",
    title: "崩坏3rd",
    thumbs: [
        "账号",
        "手游代充",
        "初始号"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fae"),
    src: "https://www.maihaome.com/file/upload/201611/09/162704931.png",
    title: "阴阳师",
    thumbs: [
        "账号",
        "初始号",
        "式神碎片"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732faf"),
    src: "https://www.maihaome.com/file/upload/201712/06/13300647487156.png",
    title: "荒野行动",
    thumbs: [
        "账号",
        "代充",
        "初始号"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fb0"),
    src: "https://www.maihaome.com/file/upload/201712/07/09514137487156.png",
    title: "永远的7日之都",
    thumbs: [
        "账号",
        "代充"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fb1"),
    src: "https://www.maihaome.com/file/upload/201708/14/15473657487156.png",
    title: "神代梦华谭",
    thumbs: [
        "账号",
        "代充",
        "初始号"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fb2"),
    src: "https://www.maihaome.com/file/upload/201711/20/10502273487156.jpg",
    title: "苍蓝境界",
    thumbs: [
        "账号",
        "代充",
        "初始号"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fb3"),
    src: "https://www.maihaome.com/file/upload/201711/20/14132692487156.png",
    title: "元气封神",
    thumbs: [
        "账号",
        "代充",
        "初始号"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fb4"),
    src: "https://www.maihaome.com/file/upload/201611/09/162232701.png",
    title: "崩坏学园2",
    thumbs: [
        "账号",
        "代充",
        "首充号"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fb5"),
    src: "https://www.maihaome.com/file/upload/201611/09/160030991.png",
    title: "Lovelive",
    thumbs: [
        "账号",
        "代充",
        "初始号"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fb6"),
    src: "https://www.maihaome.com/file/upload/201512/29/131329551.jpg",
    title: "全民枪战2",
    thumbs: [
        "账号",
        "代充"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fb7"),
    src: "https://www.maihaome.com/file/upload/201512/29/131952851.png",
    title: "穿越火线CF",
    thumbs: [
        "账号",
        "代充"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fb8"),
    src: "https://www.maihaome.com/file/upload/201611/27/12503977487156.jpg",
    title: "球球大作战",
    thumbs: [
        "代充",
        "账号"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fb9"),
    src: "https://www.maihaome.com/file/upload/201611/27/13001590487156.jpg",
    title: "梦幻诛仙手游",
    thumbs: [
        "账号",
        "代充"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fba"),
    src: "https://www.maihaome.com/file/upload/201603/29/141044711.png",
    title: "时空猎人",
    thumbs: [
        "账号",
        "装备",
        "魔晶",
        "代充"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fbb"),
    src: "https://www.maihaome.com/file/upload/201611/09/161722951.png",
    title: "乖离性百万亚瑟王",
    thumbs: [
        "账号",
        "代充",
        "初始号"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fbc"),
    src: "https://www.maihaome.com/file/upload/201511/24/191429911.png",
    title: "梦幻西游",
    thumbs: [
        "账号",
        "金币",
        "代充"
    ]
} ]);
db.getCollection("Phone").insert([ {
    _id: ObjectId("5dcb64245795fa6fb2732fbd"),
    src: "https://www.maihaome.com/file/upload/201611/09/162453261.png",
    title: "战斗女子高校",
    thumbs: [
        "账号",
        "代充"
    ]
} ]);

// ----------------------------
// Collection structure for fn_nav
// ----------------------------
db.getCollection("fn_nav").drop();
db.createCollection("fn_nav");

// ----------------------------
// Documents of fn_nav
// ----------------------------
db.getCollection("fn_nav").insert([ {
    _id: ObjectId("5dcb64c85795fa6fb2732fca"),
    src: "https://www.maihaome.com/xinapp/images/diannao.png",
    title: "端游交易"
} ]);
db.getCollection("fn_nav").insert([ {
    _id: ObjectId("5dcb64c85795fa6fb2732fcb"),
    src: "https://www.maihaome.com/xinapp/images/shouji.png",
    title: "手游交易"
} ]);
db.getCollection("fn_nav").insert([ {
    _id: ObjectId("5dcb64c85795fa6fb2732fcc"),
    src: "https://www.maihaome.com/xinapp/images/zhoukou.png",
    title: "手游折扣"
} ]);
db.getCollection("fn_nav").insert([ {
    _id: ObjectId("5dcb64c85795fa6fb2732fcd"),
    src: "https://www.maihaome.com/xinapp/images/mai.png",
    title: "我要出售"
} ]);
db.getCollection("fn_nav").insert([ {
    _id: ObjectId("5dcb64d05795fa6fb2732fce"),
    src: "https://www.maihaome.com/style/wzry/images/wzrylogo.jpg",
    title: "折扣皮肤"
} ]);
db.getCollection("fn_nav").insert([ {
    _id: ObjectId("5dcb64d05795fa6fb2732fcf"),
    src: "https://www.maihaome.com/xinapp/images/fuli.png",
    title: "福利社"
} ]);
db.getCollection("fn_nav").insert([ {
    _id: ObjectId("5dcb64d05795fa6fb2732fd0"),
    src: "https://www.maihaome.com/xinapp/images/kefu.png",
    title: "在线客服"
} ]);
db.getCollection("fn_nav").insert([ {
    _id: ObjectId("5dcb64d05795fa6fb2732fd1"),
    src: "https://www.maihaome.com/xinapp/images/geren.png",
    title: "个人中心"
} ]);

// ----------------------------
// Collection structure for notice
// ----------------------------
db.getCollection("notice").drop();
db.createCollection("notice");

// ----------------------------
// Documents of notice
// ----------------------------
db.getCollection("notice").insert([ {
    _id: ObjectId("5dcb62f15795fa6fb2732f9f"),
    title: " 《艾尔之光》新增衣架商品交易，材料担保交易，卖家快速发货服务的说明"
} ]);
db.getCollection("notice").insert([ {
    _id: ObjectId("5dcb62f15795fa6fb2732fa0"),
    title: " 关于使用国际版微信与国际版支付宝的充值说明"
} ]);
db.getCollection("notice").insert([ {
    _id: ObjectId("5dcb62f15795fa6fb2732fa1"),
    title: " 声明：借宁波不死鸟互联网科技公司名义行骗的说明"
} ]);
