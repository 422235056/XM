<template>
<!--登录-->
  <div class = "login" >
    <el-tabs type="border-card" v-model="activeName" style="border:0;background: radial-gradient(#fff, rgb(144, 133, 144))">
      <!-- 登录界面 -->
      <el-tab-pane label="登录" name="login">
         <!--login框，表单+tab标签页的组合-->
        <div class = "loginFrame">
          <el-form class = "demo-ruleForm login-container">
          <!-- 第一行-外星人小图标 -->
          <div class="et"><img src="../../img/login/et.png"/></div>
          <!-- 账号密码选项框 -->
          <div class = "formGroup">
              <el-form-item  label = "账号" prop = "user" >
                <el-input type = "text"  auto-complete = "off" placeholder = "请输入您的账号" class = "form-control" ></el-input>
              </el-form-item> 
              <el-form-item label = "密码" prop = "password" class = "form-inline">
                <el-input type = "password" auto-complete = "off" placeholder = "请输入密码" class = "form-control" >             
                </el-input>
              </el-form-item>
            </div>
            <!-- 记住密码-忘记密码选项 -->
            <div class = "remFor">
              <el-checkbox v-model = "checked" class = "remember">记住密码</el-checkbox>
              <a href ="'https://blog.csdn.net/Vanadis_outlook/article/details/72823024.html'" class = "forget">
                忘记密码？
              </a>
            </div>        
            <div class = "formButton">
              <el-form-item style = "width:100%;">
                  <el-button type = "primary" style = "width:100%;">登录</el-button>
              </el-form-item>
            </div>
            <!-- 第三方登录 -->
            <el-row class="third">
              <el-col :span="6" class="third_title">
                第三方登录...
              </el-col>
              <el-col :span="2" :offset="12" class="qq">
                <img src="../../img/login/qq.png">
              </el-col>
              <el-col :span="2" class="wx">
                <img src="../../img/login/wx.png">
              </el-col>
              <el-col :span="2" class="zfb">
                <img src="../../img/login/zfb.png">
              </el-col>
            </el-row>
          </el-form>
        </div>
      </el-tab-pane>
      <!-- 注册界面 -->
      <el-tab-pane label="注册" name="register">
        <div class = "registerFrame">
          <el-form :model="ruleForm2" status-icon :rules="rules2" ref="ruleForm2" label-width="4rem" class="demo-ruleForm login-container">
            <!-- 第一行-外星人小图标 -->
            <div class="et2"><img src="../../img/login/et2.png"/></div>
            <!-- input区域 -->
            <el-form-item label="用户名" prop="uname">
              <el-input type="text" v-model="ruleForm2.uname" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="密码" prop="upwd">
              <el-input type="password" v-model="ruleForm2.upwd" autocomplete="off"></el-input>
            </el-form-item>            
            <el-form-item label="邮箱" prop="email">
              <el-input type="email" v-model="ruleForm2.email" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="手机号" prop="phone">
              <el-input type="phone" v-model="ruleForm2.phone" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="昵称" prop="user_name">
              <el-input type="text" v-model="ruleForm2.user_name"></el-input>
            </el-form-item>
            <!-- button-提交-重置 -->
            <el-form-item style="margin-left:-2.5rem">
              <el-button type="success" @click="submitForm('ruleForm2')">注册</el-button>
              <el-button @click="resetForm('ruleForm2')">重置</el-button>
            </el-form-item>
          </el-form>
        </div>
      </el-tab-pane>
    </el-tabs>
   

  </div>
 
</template>
 
<script>
export default {
  name: "login",
  data() {
    // var checkAge = (rule, value, callback) => {
    //   if (!value) {
    //     return callback(new Error("年龄不能为空"));
    //   }
    //   setTimeout(() => {
    //     if (!Number.isInteger(value)) {
    //       callback(new Error("请输入数字值"));
    //     } else {
    //       if (value < 18) {
    //         callback(new Error("必须年满18岁"));
    //       } else {
    //         callback();
    //       }
    //     }
    //   }, 1000);
    // };
    // var validatePass = (rule, value, callback) => {
    //   if (value === "") {
    //     callback(new Error("请输入密码"));
    //   } else {
    //     if (this.ruleForm2.checkPass !== "") {
    //       this.$refs.ruleForm2.validateField("checkPass");
    //     }
    //     callback();
    //   }
    //};
    return {
      logining: true,
      checked: false,
      activeName: "login",
      ruleForm2: {
        uname: "",
        upwd: "",
        email: "",
        phone: "",
        user_name: ""
      },
      rules2:{}
      // rules2: {
      //   uname: [{ validator: validateUname, trigger: "blur" }],
      //   upwd: [{ validator: validateUpwd, trigger: "blur" }],
      //   email: [{ validator: validateEmail, trigger: "blur" }],
      //   phone: [{ validator: validatePhone, trigger: "blur" }],
      //   user_name: [{ validator: validateUserName, trigger: "blur" }]
      // }
    };
  },
  methods: {
    submitForm(formName) {
      this.$refs[formName].validate(valid => {
        if (valid) {
          alert("submit!");
        } else {
          console.log("error submit!!");
          return false;
        }
      });
    },
    resetForm(formName) {
      this.$refs[formName].resetFields();
    }
  }
};
</script>
<style scoped>
/* login整体样式 */
.login-container {
  -webkit-border-radius: 5px;
  border-radius: 15px;
  -moz-border-radius: 5px;
  background-clip: padding-box;
  margin: 180px auto;
  width: 350px;
  padding: 35px 35px 15px 35px;
  background: rgba(255, 255, 255, 0.7);
  border: 1px solid #eaeaea;
  box-shadow: 0 0 25px #cac6c6;
}
/* 外星人头像 */
.et img {
  width: 3rem;
}
/* 第一行--登录-注册 */
.tabsUser {
  display: inline-block;
  margin-left: 0px;
  margin-right: 0px;
  text-align: center;
  font-size: 1.5rem;
}
/* 左边--账号-密码*/
label {
  width: 70px;
  text-align: left;
}
/* 第二三行--账号-密码 */
.form-control {
  width: 270px;
  flex: 1;
  -webkit-flex: 1;
  -ms-flex: 1;
}
/* 记住密码 */
.remember {
  width: 250px;
  text-align: left;
  font-size: 0.8rem;
}
/* 忘记密码 */
.forget {
  width: 500px;
  text-align: right;
  font-size: 0.8rem;
}
/* 第四行--记住密码-忘记密码 */
.remFor {
  margin-bottom: 10px;
  padding-bottom: 10px;
}
/* 第五行--第三方登录-文字 */
.third .third_title {
  font-size: 0.6rem;
  color: #aaa;
}
/* 第五行--第三方登录-图标 */
.third .qq img,
.third .wx img,
.third .zfb img {
  width: 1.2rem;
}

/* 注册页面 */

/* 外星人小图标 */
.et2 img{
  width: 3rem;
  margin-left: 1rem;
}
</style>
