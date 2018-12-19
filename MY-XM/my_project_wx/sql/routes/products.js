const express=require("express")
const router=express.Router()
const pool=require("../pool")


//分页商品列表
router.get("/list",(req,res)=>{
   var pno = req.query.pno;          //当前页页码
   var pageSize = req.query.pageSize;//页大小
   var sql = "SELECT count(id) as c FROM fx_product_list";
   var process = 0;
   var obj = {pno:pno,pageSize:pageSize};
   pool.query(sql,(err,result)=>{
       if(err)throw err;
       var pageCount = Math.ceil(result[0].c/pageSize);
       process+=50;
       obj.pageCount = pageCount;
       if(process == 100){
         res.send(obj);
       }
   })
   var sql =" SELECT * FROM fx_product_list LIMIT ?,? ";
   var offset = parseInt((pno-1)*pageSize);
   pageSize = parseInt(pageSize);
   pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err)throw err;
        process+=50;
        obj.data = result;
        if(process == 100){
            res.send(obj);
        }
   });
});

//购物车
router.get("/cart",(req,res)=>{
   var sql=" SELECT * FROM fx_product_list ";
   pool.query(sql,(err,result)=>{
       if(err)throw err;
       res.send(result);
   })
});
 

module.exports=router