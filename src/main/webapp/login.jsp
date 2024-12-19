<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
    html {
        font-family: Urbanist, sans-serif;
        scroll-behavior: smooth;
    }

    body {
        margin: 0;
    }
</style>
</head>
<body>
    <%@ page import="ravi.User" %>
    <%
        User user = (User) session.getAttribute("user");
        if (user != null) {
            response.sendRedirect("home.jsp");
            return;
        }
    %>
    <section class="bg-gray-50 min-h-screen flex items-center justify-center">
        <div class="bg-gray-100 flex rounded-2xl shadow-lg max-w-3xl p-5 items-center">
          <div class="md:w-1/2 px-8 md:px-16">
            <h2 class="font-bold text-2xl text-[#002D74]">Login</h2>
            <p class="text-xs mt-4 text-[#002D74]">If you are already a member, easily log in</p>
      
            <form action="Auth" method="post" class="flex flex-col gap-4">
                <input type="hidden" name="action" value="login">
              <input class="p-2 mt-8 rounded-xl border" type="email" name="email" placeholder="johndoe@relax.com">
              <div class="relative">
                <input class="p-2 rounded-xl border w-full" type="password" name="password" placeholder="xxxxxxxxx">
                
              <i class="fas fa-eye absolute top-1/2 right-3 -translate-y-1/2 cursor-pointer text-gray-500" id="eyeIcon"></i>
              </div>
              <button class="bg-[#002D74] rounded-xl text-white py-2 hover:scale-105 duration-300">Login</button>
            </form>
      
            <div class="mt-6 grid grid-cols-3 items-center text-gray-400">
              <hr class="border-gray-400">
              <p class="text-center text-sm">OR</p>
              <hr class="border-gray-400">
            </div>
      
            <div class="mt-3 text-xs flex justify-between items-center text-[#002D74]">
              <p>Don't have an account?</p>
              <button class="py-2 px-5 bg-white border rounded-xl hover:scale-110 duration-300"
              onclick="window.location.href='register.jsp'"
              >Register</button>
            </div>
          </div>
          <div class="md:block hidden w-1/2">
            <img class="rounded-2xl" src="https://plus.unsplash.com/premium_photo-1675033153332-a297c0ce2f3b?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D">
          </div>
        </div>
      </section>
     <% if (request.getParameter("error") != null) { %>
        <div class="w-96 bg-red-500 p-4 text-white fixed top-5 right-5 rounded-xl flex items-center justify-between gap-4" id="error">
            <i class="fas fa-exclamation-circle"></i>
            <p><%= request.getParameter("error") %></p>
            <i class="fas fa-times cursor-pointer hover:scale-110 duration-300" onclick="document.getElementById('error').style.display = 'none'"></i>
        </div>
    <% } %>

    <% if (request.getParameter("message") != null) { %>
        <div
          class="w-96 bg-green-500 p-4 text-white fixed top-5 right-5 rounded-xl flex items-center justify-between gap-4"
          id="message"
        >
            <i class="fas fa-check-circle"></i>
            <p><%= request.getParameter("message") %></p>
            <i
                class="fas fa-times cursor-pointer hover:scale-110 duration-300"
                onclick="document.getElementById('message').style.display = 'none'"
            ></i>
        </div>
        <% } %>

    <script>
        const eye = document.querySelector('.fa-eye');
        const password = document.querySelector('input[type="password"]');
        eye.addEventListener('click', () => {
            if (password.type === 'password') {
            password.type = 'text';
            eye.classList.remove('fa-eye');
            eye.classList.add('fa-eye-slash');
            } else {
            password.type = 'password';
            eye.classList.remove('fa-eye-slash');
            eye.classList.add('fa-eye');
            }
        });
      </script>
</body>
</html>