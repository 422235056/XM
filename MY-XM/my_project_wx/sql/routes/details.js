const express=require("express");
const router=express.Router();
const pool=require("../pool");
///details
router.get("/message",(req,res)=>{
	var sql="SELECT * FROM fx_product";
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		res.send(result);
	})
})

module.exports=router;