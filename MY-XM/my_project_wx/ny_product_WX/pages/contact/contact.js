// pages/contact/contact.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
  
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
  
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
  submitHandle:function(e){
    //提交表单
    // console.log(e.detail.value.uname);
    // console.log(e.detail.value.upwd);
    var uname=e.detail.value.uname;
    var upwd=e.detail.value.upwd;

    var reg=/^[a-z0-9]{3,12}$/i;
    if(!reg.test(uname)){
      //提示信息:wx 自带提示信息框
      wx.showToast({
        title:"用户名不能为空",   //显示提示信息
        icon:"loading",         //图标
        duration:1500           //持续时长
      });
      setTimeout(()=>{
        wx.hideToast();   //隐藏
      },3000)
      return;
    }
    //验证通过
    wx.request({
      url:"http://127.0.0.1:3000/addUser",
      method:"POST",
      data:{uname:uname,upwd:upwd},
      success:(res)=>{
        console.log(res.data)
      }
    })
  }
})