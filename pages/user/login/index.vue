<script setup lang="ts">
  import { ref } from 'vue'

  const router = useRouter()

  const username = ref('')
  const password = ref('')
  const showRegister = ref(false)
  
  type TFn = {  
  (e:'login-success') : void
}
const emit = defineEmits<TFn>()


  async function login() {
    if (username.value === 'admin' && password.value === 'password') {
        //登陆成功
      alert('Login successful!')
      router.push(`/workspace`)
    } else {
        //登陆失败
      alert('Invalid username or password!')
    }
  }
  async function goToRegister() {
    router.push(`/user/register`)
}
</script>

<template>
    <div class="login-container">
      <div>
        <h2>Login</h2>
        <form @submit.prevent="login">
          <label for="username">Username:</label>
          <input type="text" id="username" v-model="username" required>
          <label for="password">Password:</label>
          <input type="password" id="password" v-model="password" required>
          <button @click="goToRegister()">注册</button>
          <button type="submit">登录</button>
          
        </form>
      </div>
    </div>
  </template>




<style scoped>
  .login-container {
    width: 300px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
  }
  form {
    display: flex;
    flex-direction: column;
  }
  label {
    margin-bottom: 5px;
  }
  input {
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }
  button {  
    padding: 10px;
    margin-bottom: 10px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }
  button:hover {
    background-color: #0056b3;
  }
  </style>
  