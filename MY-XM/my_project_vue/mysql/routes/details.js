const express=require("express");
const router=express.Router();
const pool=require("../pool");
///details
router.get("/",(req,res)=>{
  //按lid查询商品信息和规格列表
  var lid=req.query.lid, obj={product:{},specs:[],pics:[]};
  (async function(){
    //1. 按lid查询商品信息——异步
    var sql="SELECT * FROM xz_laptop where lid=?";
    await new Promise(function(open){
      pool.query(sql,[lid],(err,result)=>{
        if(err) console.log(err);
        obj.product=result[0];
        open();
      })
    })
    //2. 按lid查询规格列表——异步
    var sql=`select lid, spec from xz_laptop 
    where family_id=(
      select family_id from xz_laptop where lid=?)`;
    await new Promise(function(open){
      pool.query(sql,[lid],(err,result)=>{
        if(err) console.log(err);
        obj.specs=result;
        open(); 
      })
    })
    //3. 按lid查询图片列表——异步
    var sql=`select * from xz_laptop_pic where laptop_id=?`;
    await new Promise(function(open){
      pool.query(sql,[lid],(err,result)=>{
        if(err) console.log(err);
        obj.pics=result;
        open(); 
      })
    })
    res.send(obj);//4. 返回结果
    //测试: http://localhost:3000/details?lid=5
  })()
})
router.get("/list",(req,res)=>{
	var id=req.query.id;
	//console.log(id);
	var sql="SELECT * FROM fx_detail WHERE id=?";
	pool.query(sql,[id],(err,result)=>{
		if(err) console.log(err);
		res.send(result)
	})
})

module.exports=router;