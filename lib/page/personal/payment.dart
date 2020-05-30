import 'package:flutter/material.dart';
import './payment_data.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("支付",style: TextStyle(color: Colors.black,fontSize: 16.0),),
        backgroundColor: Color(0xFFEDEDED),
        leading:IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 20.0,),
          onPressed: (){
            Navigator.of(context).pop();
          }
        ),
        elevation: 0,
      ),
      body: _paymentContent(context),
    );
  }

  Widget _paymentContent(BuildContext context){
    return SingleChildScrollView(
      child:Container(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 10.0
        ),
        child: Column(
          children: <Widget>[
            _cashierWidget(),
            _cardWidget(context,serviceData,"腾讯服务"),
            _cardWidget(context,extensionData,"现时推广"),
            _cardWidget(context,thirdpartyData,"第三方服务"),
            SizedBox(height: 4.0,)
          ],
        ),
      )
    );
  }

  Widget _cashierWidget(){
    return Container(
      padding: EdgeInsets.only(top:40.0,bottom: 60.0),
      decoration: BoxDecoration(
        color: Color(0xFF2BAC69),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/images/payment/payscan.png",width: 45.0,height: 30.0,fit: BoxFit.fill,),
                SizedBox(height: 10.0,),
                Text("收付款",style: TextStyle(color:Colors.white,fontSize: 17.0),)
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/images/payment/wallet.png",width: 45.0,height: 30.0),
                SizedBox(height: 10.0,),
                Text("钱包",style: TextStyle(color:Colors.white,fontSize: 17.0),),
                SizedBox(height: 4.0,),
                Text("￥9999.99",style: TextStyle(color:Colors.white60,fontSize: 14.0),)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _cardWidget(BuildContext context,List<PaymentModel>  list,String title){
    return Container(
      margin: EdgeInsets.only(top:10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        children: <Widget>[
          _cardHeaderWidget(title),
          Divider(
            height: 1.0,
            indent: 0.0,
            color: Colors.black12,
          ),
          _gridViewBuilder(context,list)
        ],
      ),
    );
  }

  Widget _cardHeaderWidget(String title){
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(
        vertical: 18.0,
        horizontal: 24.0
      ),
      child: Text(title,style: TextStyle(color:Color(0xFFBABABA),fontSize: 16.0),),
    );
  }

  Widget _gridViewBuilder(BuildContext context,List<PaymentModel> items){
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: items.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //横轴元素个数
            crossAxisCount: 3,
            //纵轴间距
            mainAxisSpacing: 1.0,
            //横轴间距
            crossAxisSpacing: 1.0,
            //子组件宽高长度比例
            childAspectRatio: 1.0
          ),
          itemBuilder: (BuildContext context, int index){
            return _getItemContainer(items[index]);
          }
        ),
    );
  }

  Widget _getItemContainer(PaymentModel item){
    return Container(
      height: 60.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 30.0,
            height: 30.0,
            margin: EdgeInsets.only(bottom: 10.0),
            child: Image.asset(item.image),
          ),
          Text(item.title)
        ],
      ),
    );
  }
}