Page({

  /**
   * 页面的初始数据
   */
  data: {
    banner:[],
    floor1:[],
    floor2:[]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    wx.request({
      url:"http://127.0.0.1:3000/index/lb",
      methods:"GET",
      success:(res)=>{
        //console.log(res.data);    
        this.setData({
          banner:res.data
        })
      }
    })
    wx.request({
      url:"http://127.0.0.1:3000/index/lc2",
      methods:"GET",
      success:(res)=>{   
        //console.log(res.data)
        this.setData({
          floor1:res.data.slice(1,7)         
        })
      }
    })
    wx.request({
      url:"http://127.0.0.1:3000/index/lc3",
      methods:"GET",
      success:(res)=>{   
        //console.log(res.data)
        this.setData({
          floor2:res.data.slice(1,7)         
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
    
  }
})
