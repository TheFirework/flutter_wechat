class MessageData {
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;

  MessageData({
    this.avatar,
    this.title,
    this.subTitle,
    this.time,
    this.type
  });
}

enum MessageType {
  SYSTEM,
  PUBLIC,
  CHAT,
  GROUP
}

List<MessageData> messageData = [
  MessageData(
    avatar: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590661675659&di=6fafc88f1b54520d7940b6b08efc913e&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180830%2F18%2F1535626114-iqrRIQymCn.jpg",
    title: "哆啦A梦",
    subTitle: "能够想着别人的幸福，为别人的悲伤而悲伤。",
    time: DateTime.now(),
    type: MessageType.CHAT
  ),
  MessageData(
    avatar: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590661930971&di=c7a93883058224cb97ce794cedb48917&imgtype=0&src=http%3A%2F%2Fimg.qqzhi.com%2Fuploads%2F2018-12-02%2F002304479.jpg",
    title: "阿拉蕾",
    subTitle: "哈哈~我被夸奖了~",
    time: DateTime.now(),
    type: MessageType.CHAT
  ),
  MessageData(
    avatar: "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3844386725,750756369&fm=26&gp=0.jpg",
    title: "皮卡丘",
    subTitle: "皮卡 皮卡",
    time: DateTime.now(),
    type: MessageType.CHAT
  ),
  MessageData(
    avatar: "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2129378010,3427097669&fm=26&gp=0.jpg",
    title: "手冢国光",
    subTitle: "一直都是如此的。只有平常心才能打出精彩的对局。不论遇上什么情况，只要保持心态，就能打出属于自己的网球。",
    time: DateTime.now(),
    type: MessageType.CHAT
  ),
  MessageData(
    avatar: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590662278137&di=b350f51f5df9836a912f76e4099896c3&imgtype=0&src=http%3A%2F%2Fimg3.doubanio.com%2Fview%2Fgroup_topic%2Fl%2Fpublic%2Fp173352130.jpg",
    title: "18号",
    subTitle: "你砍掉了我最心爱的头发",
    time: DateTime.now(),
    type: MessageType.CHAT
  ),
  MessageData(
    avatar: "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3879465243,4271108975&fm=26&gp=0.jpg",
    title: "木之本樱",
    subTitle: "隐藏着黑暗力量的钥匙啊，在我面前显示你真正的力量，跟你定下约定的小樱命令你，封印解除！",
    time: DateTime.now(),
    type: MessageType.CHAT
  ),
  MessageData(
    avatar: "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2210394537,3544575396&fm=26&gp=0.jpg",
    title: "迈特·凯",
    subTitle: "真正重要的东西，不管痛苦也好、悲伤也好...都要努力到底，就算失去生命也要用双手来保护到底!如此一来，就算死掉的话，也会永远留下男子汉活过的证据...",
    time: DateTime.now(),
    type: MessageType.CHAT
  ),
  MessageData(
    avatar: "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3206831449,2649755407&fm=26&gp=0.jpg",
    title: "樱木花道",
    subTitle: "本人是天才篮球手樱木花道,看着,看我英勇的姿势!",
    time: DateTime.now(),
    type: MessageType.CHAT
  ),
  MessageData(
    avatar: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590662671251&di=3ced161ca68b37888b410c9a918b41ab&imgtype=0&src=http%3A%2F%2Fi2.hdslb.com%2Fbfs%2Fface%2Fa952d51e1000fd0eb30f3dcacbd9a5b98d0712e4.jpg",
    title: "工藤新一",
    subTitle: "真相只有一个！",
    time: DateTime.now(),
    type: MessageType.CHAT
  ),
  MessageData(
    avatar: "https://iknow-pic.cdn.bcebos.com/1b4c510fd9f9d72a2930215dd62a2834349bbb1d?x-bce-process=image/resize,m_lfit,w_600,h_800,limit_1",
    title: "蓝染惣右介",
    subTitle: "我们之所以觉得悬崖上的花朵美丽，那是因为我们会在悬崖停下脚步，而不是像那些毫不畏惧的花朵般，能向天空踏出一步。",
    time: DateTime.now(),
    type: MessageType.CHAT
  ),
  MessageData(
    avatar: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590663038971&di=9d36c4d16b54713e5ca247a8b5af0f68&imgtype=0&src=http%3A%2F%2Fimg.hao661.com%2Fzt.hao661.com%2Fuploads%2Fallimg%2Fc141008%2F1412H54BR3P-433Z6.jpg",
    title: "夜神月",
    subTitle: "无论在任何时代,所谓的规则都是由被视为神者所制定的。",
    time: DateTime.now(),
    type: MessageType.CHAT
  ),
];