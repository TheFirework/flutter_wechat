import 'package:flutter/material.dart';

class ConatctVO {

  String name;
  String avatarUrl;
  String seationKey;

  ConatctVO({
    this.avatarUrl,
    this.name,
    @required this.seationKey
  });
}


List<ConatctVO> conatctData = [
  ConatctVO(
    seationKey: 'A',
    name: "Avril Ramona Lavigne",
    avatarUrl: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590666423958&di=f89d8eea69512f84fbaa19aeba843493&imgtype=0&src=http%3A%2F%2Fimages5.fanpop.com%2Fimage%2Fphotos%2F26900000%2FAvril-Maxim-PhotoShoot-avril-lavigne-26908968-1600-1200.jpg"
  ),
  ConatctVO(
    seationKey: 'A',
    name: "阿诺德·施瓦辛格",
    avatarUrl: "http://entpic.yue365.com/star/8/14149/14149.jpg"
  ),
  ConatctVO(
    seationKey: 'B',
    name: "白冰",
    avatarUrl: "http://entpic.yue365.com/star/2/2009/2009.jpg"
  ),
  ConatctVO(
    seationKey: 'B',
    name: "布拉德·皮特",
    avatarUrl: "http://entpic.yue365.com/star/4/6408/6408.jpg"
  ),
  ConatctVO(
    seationKey: 'c',
    name: "蔡徐坤",
    avatarUrl: "http://entpic.yue365.com/star/11/20589/20589.jpg"
  ),
  ConatctVO(
    seationKey: 'C',
    name: "陈冠希",
    avatarUrl: "http://entpic.yue365.com/star/12/23830/23830.jpg"
  ),
  ConatctVO(
    seationKey: 'C',
    name: "陈冰",
    avatarUrl: "http://entpic.yue365.com/star/6/10235/10235.jpg"
  ),
  ConatctVO(
    seationKey: 'D',
    name: "迪丽热巴",
    avatarUrl: "http://entpic.yue365.com/star/1/401/401.jpg"
  ),
  ConatctVO(
    seationKey: 'D',
    name: "邓紫棋",
    avatarUrl: "http://entpic.yue365.com/star/9/17031/17031.jpg"
  ),
  ConatctVO(
    seationKey: 'D',
    name: "董璇",
    avatarUrl: "http://entpic.yue365.com/star/8/15360/15360.jpg"
  ),
  ConatctVO(
    seationKey: 'E',
    name: "恩美",
    avatarUrl: "http://entpic.yue365.com/star/11/20141/20141.jpg"
  ),
  ConatctVO(
    seationKey: 'E',
    name: "恩熙",
    avatarUrl: "http://entpic.yue365.com/star/15/28893/28893.jpg"
  ),
  ConatctVO(
    seationKey: 'F',
    name: "富大龙",
    avatarUrl: "http://entpic.yue365.com/star/3/4220/4220.jpg"
  ),
  ConatctVO(
    seationKey: 'F',
    name: "芬恩·怀特海德",
    avatarUrl: "http://entpic.yue365.com/star/5/8993/8993.jpg"
  ),
  ConatctVO(
    seationKey: 'F',
    name: "芬恩·怀特海德",
    avatarUrl: "http://entpic.yue365.com/star/5/8993/8993.jpg"
  ),
  ConatctVO(
    seationKey: 'G',
    name: "郭碧婷",
    avatarUrl: "http://entpic.yue365.com/star/2/3692/3692.jpg"
  ),
  ConatctVO(
    seationKey: 'G',
    name: "高圆圆",
    avatarUrl: "http://entpic.yue365.com/star/4/6127/6127.jpg"
  ),
  ConatctVO(
    seationKey: 'G',
    name: "郭富城",
    avatarUrl: "http://entpic.yue365.com/star/2/3289/3289.jpg"
  ),
  ConatctVO(
    seationKey: 'G',
    name: "高晓松",
    avatarUrl: "http://entpic.yue365.com/star/11/20904/20904.jpg"
  ),
  ConatctVO(
    seationKey: 'H',
    name: "华晨宇",
    avatarUrl: "http://entpic.yue365.com/star/12/22707/22707.jpg"
  ),
  ConatctVO(
    seationKey: 'H',
    name: "韩雪",
    avatarUrl: "http://entpic.yue365.com/star/4/6232/6232.jpg"
  ),
  ConatctVO(
    seationKey: 'H',
    name: "胡静",
    avatarUrl: "http://entpic.yue365.com/star/1/1064/1064.jpg"
  ),
  ConatctVO(
    seationKey: 'I',
    name: "ICE",
    avatarUrl: "http://entpic.yue365.com/star/16/30130/30130.jpg"
  ),
  ConatctVO(
    seationKey: 'J',
    name: "鞠婧祎",
    avatarUrl: "http://entpic.yue365.com/star/2/2948/2948.jpg"
  ),
  ConatctVO(
    seationKey: 'J',
    name: "江疏影",
    avatarUrl: "http://entpic.yue365.com/star/2/2133/2133.jpg"
  ),
  ConatctVO(
    seationKey: 'J',
    name: "江一燕",
    avatarUrl: "http://entpic.yue365.com/star/3/4250/4250.jpg"
  ),
  ConatctVO(
    seationKey: 'K',
    name: "孔宋今",
    avatarUrl: "http://entpic.yue365.com/star/15/28216/28216.jpg"
  ),
  ConatctVO(
    seationKey: 'K',
    name: "克里斯汀·斯图尔特",
    avatarUrl: "http://entpic.yue365.com/star/4/6114/6114.jpg"
  ),
  ConatctVO(
    seationKey: 'L',
    name: "李嘉欣",
    avatarUrl: "http://entpic.yue365.com/star/6/11267/11267.jpg"
  ),
  ConatctVO(
    seationKey: 'L',
    name: "刘德华",
    avatarUrl: "http://entpic.yue365.com/star/2/3278/3278.jpg"
  ),
  ConatctVO(
    seationKey: 'L',
    name: "黎明",
    avatarUrl: "http://entpic.yue365.com/star/2/3923/3923.jpg"
  ),
  ConatctVO(
    seationKey: 'M',
    name: "木村拓哉",
    avatarUrl: "http://entpic.yue365.com/star/8/15795/15795.jpg"
  ),
  ConatctVO(
    seationKey: 'M',
    name: "迈克尔·法斯宾德",
    avatarUrl: "http://entpic.yue365.com/star/2/3679/3679.jpg"
  ),
  ConatctVO(
    seationKey: 'N',
    name: "南笙",
    avatarUrl: "http://entpic.yue365.com/star/2/2884/2884.jpg"
  ),
  ConatctVO(
    seationKey: 'N',
    name: "娜塔丽·波特曼",
    avatarUrl: "http://entpic.yue365.com/star/12/23257/23257.jpg"
  ),
  ConatctVO(
    seationKey: 'N',
    name: "妮可·里奇",
    avatarUrl: "http://entpic.yue365.com/star/11/20383/20383.jpg"
  ),
  ConatctVO(
    seationKey: 'O',
    name: "欧阳娜娜",
    avatarUrl: "http://entpic.yue365.com/star/3/4165/4165.jpg"
  ),
  ConatctVO(
    seationKey: 'P',
    name: "潘玮柏",
    avatarUrl: "http://entpic.yue365.com/star/2/2601/2601.jpg"
  ),
  ConatctVO(
    seationKey: 'P',
    name: "潘春春",
    avatarUrl: "http://entpic.yue365.com/star/4/6646/6646.jpg"
  ),
  ConatctVO(
    seationKey: 'P',
    name: "裴珠泫",
    avatarUrl: "http://entpic.yue365.com/star/13/24124/24124.jpg"
  ),
  ConatctVO(
    seationKey: 'P',
    name: "裴秀智",
    avatarUrl: "http://entpic.yue365.com/star/1/1596/1596.jpg"
  ),
  ConatctVO(
    seationKey: 'M',
    name: "迈克尔·法斯宾德",
    avatarUrl: "http://entpic.yue365.com/star/2/3679/3679.jpg"
  ),
  ConatctVO(
    seationKey: 'Q',
    name: "全智贤",
    avatarUrl: "http://entpic.yue365.com/star/1/489/489.jpg"
  ),
  ConatctVO(
    seationKey: 'Q',
    name: "秦岚",
    avatarUrl: "http://entpic.yue365.com/star/2/2390/2390.jpg"
  ),
  ConatctVO(
    seationKey: 'Q',
    name: "秋瓷炫",
    avatarUrl: "http://entpic.yue365.com/star/1/162/162.jpg"
  ),
  ConatctVO(
    seationKey: 'Q',
    name: "乔振宇",
    avatarUrl: "http://entpic.yue365.com/star/1/847/847.jpg"
  ),
  ConatctVO(
    seationKey: 'R',
    name: "任泉",
    avatarUrl: "http://entpic.yue365.com/star/1/1309/1309.jpg"
  ),
  ConatctVO(
    seationKey: 'S',
    name: "宋茜",
    avatarUrl: "http://entpic.yue365.com/star/1/456/456.jpg"
  ),
  ConatctVO(
    seationKey: 'S',
    name: "宋慧乔",
    avatarUrl: "http://entpic.yue365.com/star/1/1078/1078.jpg"
  ),
  ConatctVO(
    seationKey: 'S',
    name: "孙俪",
    avatarUrl: "http://entpic.yue365.com/star/1/1/1.jpg"
  ),
  ConatctVO(
    seationKey: 'S',
    name: "石原里美",
    avatarUrl: "http://entpic.yue365.com/star/4/7253/7253.jpg"
  ),
  ConatctVO(
    seationKey: 'S',
    name: "宋妍霏",
    avatarUrl: "http://entpic.yue365.com/star/2/2422/2422.jpg"
  ),
  ConatctVO(
    seationKey: 'S',
    name: "斯嘉丽·约翰逊",
    avatarUrl: "http://entpic.yue365.com/star/2/3564/3564.jpg"
  ),
  ConatctVO(
    seationKey: 'T',
    name: "唐嫣",
    avatarUrl: "http://entpic.yue365.com/star/1/137/137.jpg"
  ),
  ConatctVO(
    seationKey: 'T',
    name: "天韵",
    avatarUrl: "http://entpic.yue365.com/star/14/26748/26748.jpg"
  ),
  ConatctVO(
    seationKey: 'T',
    name: "谭松韵",
    avatarUrl: "http://entpic.yue365.com/star/1/1557/1557.jpg"
  ),
  ConatctVO(
    seationKey: 'T',
    name: "汤唯",
    avatarUrl: "http://entpic.yue365.com/star/3/4577/4577.jpg"
  ),
  ConatctVO(
    seationKey: 'T',
    name: "田馥甄",
    avatarUrl: "http://entpic.yue365.com/star/12/22994/22994.jpg"
  ),
  ConatctVO(
    seationKey: 'T',
    name: "童菲",
    avatarUrl: "http://entpic.yue365.com/star/1/834/834.jpg"
  ),
  ConatctVO(
    seationKey: 'T',
    name: "童瑶",
    avatarUrl: "http://entpic.yue365.com/star/1/1706/1706.jpg"
  ),
  ConatctVO(
    seationKey: 'T',
    name: "谭维维",
    avatarUrl: "http://entpic.yue365.com/star/11/20891/20891.jpg"
  ),
  ConatctVO(
    seationKey: 'V',
    name: "veegee",
    avatarUrl: "http://entpic.yue365.com/star/20/39561/39561.jpg"
  ),
  ConatctVO(
    seationKey: 'V',
    name: "VAVA",
    avatarUrl: "http://entpic.yue365.com/star/13/24095/24095.jpg"
  ),
  ConatctVO(
    seationKey: 'W',
    name: "王鸥",
    avatarUrl: "http://entpic.yue365.com/star/1/686/686.jpg"
  ),
  ConatctVO(
    seationKey: 'W',
    name: "吴宣仪",
    avatarUrl: "http://entpic.yue365.com/star/14/26430/26430.jpg"
  ),
  ConatctVO(
    seationKey: 'W',
    name: "王丽坤",
    avatarUrl: "http://entpic.yue365.com/star/1/1061/1061.jpg"
  ),
  ConatctVO(
    seationKey: 'W',
    name: "王子文",
    avatarUrl: "http://entpic.yue365.com/star/2/2098/2098.jpg"
  ),
  ConatctVO(
    seationKey: 'W',
    name: "吴倩",
    avatarUrl: "http://entpic.yue365.com/star/1/307/307.jpg"
  ),
  ConatctVO(
    seationKey: 'W',
    name: "王李丹妮",
    avatarUrl: "http://entpic.yue365.com/star/5/9740/9740.jpg"
  ),
  ConatctVO(
    seationKey: 'W',
    name: "吴亦凡",
    avatarUrl: "http://entpic.yue365.com/star/2/3269/3269.jpg"
  ),
  ConatctVO(
    seationKey: 'W',
    name: "吴亦凡",
    avatarUrl: "http://entpic.yue365.com/star/2/3269/3269.jpg"
  ),
  ConatctVO(
    seationKey: 'X',
    name: "徐璐",
    avatarUrl: "http://entpic.yue365.com/star/1/1795/1795.jpg"
  ),
  ConatctVO(
    seationKey: 'X',
    name: "希林娜依高",
    avatarUrl: "http://entpic.yue365.com/star/12/22723/22723.jpg"
  ),
  ConatctVO(
    seationKey: 'X',
    name: "邢菲",
    avatarUrl: "http://entpic.yue365.com/star/4/6546/6546.jpg"
  ),
  ConatctVO(
    seationKey: 'Y',
    name: "虞书欣",
    avatarUrl: "http://entpic.yue365.com/star/4/7030/7030.jpg"
  ),
  ConatctVO(
    seationKey: 'Y',
    name: "杨幂",
    avatarUrl: "http://entpic.yue365.com/star/1/1410/1410.jpg"
  ),
  ConatctVO(
    seationKey: 'Y',
    name: "杨紫",
    avatarUrl: "http://entpic.yue365.com/star/1/1630/1630.jpg"
  ),
  ConatctVO(
    seationKey: 'Z',
    name: "郑爽",
    avatarUrl: "http://entpic.yue365.com/star/1/358/358.jpg"
  ),
  ConatctVO(
    seationKey: 'Z',
    name: "赵露思",
    avatarUrl: "http://entpic.yue365.com/star/11/20854/20854.jpg"
  ),
  ConatctVO(
    seationKey: 'Z',
    name: "周星驰",
    avatarUrl: "http://entpic.yue365.com/star/10/19974/19974.jpg"
  ),
];