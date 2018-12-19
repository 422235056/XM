// pages/shoplist/shoplist.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    shoplist:[],  //保存数据
    pageIndex:0,  //当前显示页码
    pageSize:5,   //每页数量
    hasMore:true  //用于记录是否还有更多商品
  },

  loadMore:function(){
    //加载数据
    wx.request({
      url:"http://127.0.0.1:3000/products/list",
      data:{
        pno:++this.data.pageIndex,
        pageSize:this.data.pageSize
      },
      methods:"GET", 
      success:(res)=>{
        //判断是否有更多数据
        var pageCount=res.data.pageCount;
        if(this.data.pageIndex>=pageCount){
          this.setData({
            hasMore:false
          })
        }

        console.log(res.data.data);    
        //拼接数组
        var rows=this.data.shoplist.concat(res.data.data);
        this.setData({
          shoplist:rows
        })
      }
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.loadMore();
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
    //console.log("下拉操作")
    //1,显示第一页数据,清空
    this.setData({
      pageIndex:0,
      shoplist:[],
      hasMore:true
    })
    //2,加载更多
    this.loadMore();
    //3,停止下拉操作多次执行
    wx.stopPullDownRefresh()
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
    //console.log("上拉操作")
    this.loadMore();
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
  
  },
  showDetail:function(e){
    //自定义方法
    var pid=e.target.dataset.pid;
    console.log(pid);
    //跳转方式:1
    // wx.redirectTo({
    //   url:"/pages/detail/detail"
    // })
    //跳转方式:2
    wx.navigateTo({
      url:"/pages/detail/detail?pid="+pid
    })
    //跳转方式:3  --->没有组件限制(可以跳转到tabbar组件中去)
    // wx.reLaunch({
    //   url:"/pages/message/message"
    // })
  }
})