const express=require("express");
const router=express.Router();
const pool=require("../pool");

//index/lc
router.get("/lc",(req,res)=>{
  var sql=`SELECT * FROM fx_index_product where seq_recommended!=0 order by seq_recommended`;
  pool.query(sql,[],(err,result)=>{
    if(err)
      console.log(err);
    res.send(result);
  })
})
//index/lc1
router.get("/lc1",(req,res)=>{
  var sql=`SELECT * FROM fx_floor_lc1 `;
  pool.query(sql,(err,result)=>{
    if(err)
      console.log(err);
    res.send(result);
  })
})
//index/lc2
router.get("/lc2",(req,res)=>{
  var sql=`SELECT * FROM fx_floor_lc2 `;
  pool.query(sql,(err,result)=>{
    if(err)
      console.log(err);
    res.send(result);
  })
})
//index/lc3
router.get("/lc3",(req,res)=>{
  var sql=`SELECT * FROM fx_floor_lc3 `;
  pool.query(sql,(err,result)=>{
    if(err)
      console.log(err);
    res.send(result);
  })
})
//index/lc4
router.get("/lc4",(req,res)=>{
  var sql=`SELECT * FROM fx_floor_lc4 `;
  pool.query(sql,(err,result)=>{
    if(err)
      console.log(err);
    res.send(result);
  })
})
//index/lc5
router.get("/lc5",(req,res)=>{
  var sql=`SELECT * FROM fx_floor_lc5 `;
  pool.query(sql,(err,result)=>{
    if(err)
      console.log(err);
    res.send(result);
  })
})

//index/lb
router.get("/lb",(req,res)=>{
  var sql=`SELECT * FROM fx_floor_lb `;
  pool.query(sql,(err,result)=>{
    if(err)
      console.log(err);
    res.send(result);
  })
})

module.exports=router;