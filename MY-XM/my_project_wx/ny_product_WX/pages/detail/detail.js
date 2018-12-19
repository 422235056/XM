// pages/detail/detail.js
Page({  

  /**
   * 页面的初始数据
   */
  data: {
    cart:[]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    wx.request({
      url:"http://127.0.0.1:3000/products/cart",
      methods:"GET",
      success:(res)=>{
        //console.log(res.data);
        this.setData({
          cart:res.data
        })
      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
  
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
  
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
  
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
  
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
  
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
  
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
  
  },
  addNum:function(){
    //点击加号
    var n=this.data.number+1;
    if(n>999){
      n=999
    }
    this.setData({
      number:n
    })
    // console.log("+")
  },
  subNum:function(){
    //点击减号
    var n=this.data.number-1;
    if(n<0){
      n=0;
    }
    this.setData({
      number:n
    })
    // console.log("-")
  }
})