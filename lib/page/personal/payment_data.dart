class PaymentModel {
  final String image;
  final String title;

  PaymentModel({this.image, this.title});

  factory PaymentModel.fromJson(Map<String, dynamic> json){
    return PaymentModel(
      image:json['image'],
      title: json['title']
    );
  }
}

  List<PaymentModel> serviceData = [
    PaymentModel(
      image:"assets/images/payment/credit_card.png",
      title:"信用卡还款"
    ),
    PaymentModel(
      image:"assets/images/payment/loan.png",
      title:"微粒贷借钱"
    ),
    PaymentModel(
      image:"assets/images/payment/phone_recharge.png",
      title:"手机充值"
    ),
    PaymentModel(
      image:"assets/images/payment/conduct.png",
      title:"理财通"
    ),
    PaymentModel(
      image:"assets/images/payment/living_expenses.png",
      title:"生活缴费"
    ),
    PaymentModel(
      image:"assets/images/payment/qcoin.png",
      title:"Q币充值"
    ),
    PaymentModel(
      image:"assets/images/payment/urban_services.png",
      title:"城市服务"
    ),
    PaymentModel(
      image:"assets/images/payment/welfare.png",
      title:"腾讯公益"
    ),
    PaymentModel(
      image:"assets/images/payment/medical_care.png",
      title:"医疗健康"
    ),
  ];


  List<PaymentModel> extensionData = [
    PaymentModel(
      image:"assets/images/payment/health_code.png",
      title:"防疫健康码"
    ),
    PaymentModel(
      image:"assets/images/payment/starbucks.png",
      title:"星巴克"
    ),
  ];

  List<PaymentModel> thirdpartyData = [
    PaymentModel(
      image:"assets/images/payment/train_ticket.png",
      title:"火车票机票"
    ),
    PaymentModel(
      image:"assets/images/payment/didi.png",
      title:"滴滴出行"
    ),
    PaymentModel(
      image:"assets/images/payment/jd.png",
      title:"京东购物"
    ),
    PaymentModel(
      image:"assets/images/payment/meituan.png",
      title:"美团外卖"
    ),
    PaymentModel(
      image:"assets/images/payment/maoyan.png",
      title:"电影演出赛事"
    ),
    PaymentModel(
      image:"assets/images/payment/pingduoduo.png",
      title:"拼多多"
    ),
  ];