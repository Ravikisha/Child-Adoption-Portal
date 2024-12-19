<!-- We are building the child adpotion website -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Child Adoption</title>
    <script src="https://cdn.tailwindcss.com"></script>
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
  <body class="bg-white dark:bg-gray-900">
    <main class="space-y-40 mb-40">
      <div class="relative" id="home">
        <div
          aria-hidden="true"
          class="absolute inset-0 grid grid-cols-2 -space-x-52 opacity-40 dark:opacity-20"
        >
          <div
            class="blur-[106px] h-56 bg-gradient-to-br from-primary to-purple-400 dark:from-blue-700"
          ></div>
          <div
            class="blur-[106px] h-32 bg-gradient-to-r from-cyan-400 to-sky-300 dark:to-indigo-600"
          ></div>
        </div>
        <div class="max-w-7xl mx-auto px-6 md:px-12 xl:px-6">
          <div class="relative pt-36 ml-auto">
            <div class="lg:w-2/3 text-center mx-auto">
              <h1
                class="text-gray-900 dark:text-white font-bold text-5xl md:text-6xl xl:text-7xl"
              >
                Helping children find their
                <span class="text-primary dark:text-white">forever home</span>
              </h1>
              <p class="mt-8 text-gray-700 dark:text-gray-300">
                We are a non-profit organization that helps children find their
                forever home. We believe that every child deserves a loving and
                caring family.
              </p>
              <div class="mt-16 flex flex-wrap justify-center gap-y-4 gap-x-6">
                <a
                  href="home.jsp"
                  class="relative flex h-11 w-full items-center justify-center px-6 before:absolute before:inset-0 before:rounded-full before:bg-primary before:transition before:duration-300 hover:before:scale-105 active:duration-75 active:before:scale-95 sm:w-max"
                >
                  <span class="relative text-base font-semibold text-white"
                    >Get started</span
                  >
                </a>
                <a
                  href="#"
                  class="relative flex h-11 w-full items-center justify-center px-6 before:absolute before:inset-0 before:rounded-full before:border before:border-transparent before:bg-primary/10 before:bg-gradient-to-b before:transition before:duration-300 hover:before:scale-105 active:duration-75 active:before:scale-95 dark:before:border-gray-700 dark:before:bg-gray-800 sm:w-max"
                >
                  <span
                    class="relative text-base font-semibold text-primary dark:text-white"
                    >Learn more</span
                  >
                </a>
              </div>
              <div
                class="hidden py-8 mt-16 border-y border-gray-100 dark:border-gray-800 sm:flex justify-between"
              >
                <div class="text-left w-1/3 p-4">
                  <h6
                    class="text-lg font-semibold text-gray-700 dark:text-white"
                  >
                    The most secure
                  </h6>
                  <p class="mt-2 text-gray-500">Verfied by the best</p>
                </div>
                <div class="text-left w-1/3 p-4">
                  <h6
                    class="text-lg font-semibold text-gray-700 dark:text-white"
                  >
                    The most loved
                  </h6>
                  <p class="mt-2 text-gray-500">
                    We have helped thousands of children find their forever home
                  </p>
                </div>
                <div class="text-left w-1/3 p-4">
                  <h6
                    class="text-lg font-semibold text-gray-700 dark:text-white"
                  >
                    The most trusted
                  </h6>
                  <p class="mt-2 text-gray-500">
                    We have been in business for over 20 years
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <section class="pt-10 bg-amber-400 2xl:py-24 2xl:bg-white sm:pt-16 md:pt-0">
        <div class="px-4 mx-auto rounded-md bg-amber-400 max-w-7xl sm:px-6 lg:px-8">
            <div class="2xl:pl-24">
                <div class="grid grid-cols-1 gap-y-12 md:grid-cols-2 md:gap-x-8 2xl:gap-x-20">
                    <div class="text-center md:py-16 xl:py-24 md:text-left">
                        <blockquote>
                            <p class="text-xl font-semibold leading-relaxed text-gray-900">“Adoption is a journey of faith, from beginning to end. It's about finding the family you were always meant to have, but couldn't find on your own. It is about love, in its truest and most selfless form. It's when the hearts of parents are willing to embrace the unknown, face the challenges, and give a child not just a home, but a forever family. It's a promise that no matter where you come from, you are chosen, you are wanted, and you belong.”</p>
                        </blockquote>
                        <div class="mt-6 sm:flex sm:items-baseline sm:justify-center md:justify-start">
                            <p class="text-base font-semibold text-gray-900"> - Kristin Chenoweth</p>
                        </div>
                    </div>
    
                    <div class="relative">
                        <img class="md:absolute md:bottom-0 md:scale-110 md:origin-bottom-right lg:scale-75 2xl:scale-100 2xl:-mt-20" src="https://cdn.rareblocks.xyz/collection/celebration/images/cta/11/smiling-man.png" alt="" />
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="py-10 bg-gray-50 sm:py-16 lg:py-24">
    <div class="px-4 mx-auto sm:px-6 lg:px-8 max-w-7xl">
        <div class="max-w-2xl mx-auto text-center">
            <h2 class="text-3xl font-bold leading-tight text-black sm:text-4xl lg:text-5xl">Frequently Asked Questions</h2>
            <p class="max-w-xl mx-auto mt-4 text-base leading-relaxed text-gray-600">
                Find the solution to your problem. We are here to help you.
            </p>
        </div>

        <div class="max-w-3xl mx-auto mt-8 space-y-4 md:mt-16">
            <div class="transition-all duration-200 bg-white border border-gray-200 shadow-lg cursor-pointer hover:bg-gray-50">
                <button type="button" class="flex items-center justify-between w-full px-4 py-5 sm:p-6">
                    <span class="flex text-lg font-semibold text-black"> How diffcult is it to adopt a child? What are the requirements? How long does the process take? </span>

                    <svg class="w-6 h-6 text-gray-400 rotate-180" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                </button>

                <div class="px-4 pb-5 sm:px-6 sm:pb-6">
                    <p>
                        It's not difficult to adopt a child. The requirements are simple. You need to be at least 21 years old, have a stable income, and have a clean criminal record. The process can take anywhere from 6 months to 2 years, depending on the child's age and the country you are adopting from.
                    </p>
                </div>
            </div>

            <div class="transition-all duration-200 bg-white border border-gray-200 cursor-pointer hover:bg-gray-50">
                <button type="button" class="flex items-center justify-between w-full px-4 py-5 sm:p-6">
                    <span class="flex text-lg font-semibold text-black">
                        What is the cost of adopting a child? Are there any financial assistance programs available?    
                    </span>

                    <svg class="w-6 h-6 text-gray-400" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                </button>

                <div class="hidden px-4 pb-5 sm:px-6 sm:pb-6">
                    <p>
                        The cost of adopting a child can vary depending on the country you are adopting from and the age of the child. On average, the cost can range from $20,000 to $50,000. There are financial assistance programs available to help offset the cost of adoption, such as the Adoption Tax Credit and Adoption Assistance Program.
                    </p>
                </div>
            </div>

            <div class="transition-all duration-200 bg-white border border-gray-200 cursor-pointer hover:bg-gray-50">
                <div class="">
                    <button type="button" class="flex items-center justify-between w-full px-4 py-5 sm:p-6">
                        <span class="flex text-lg font-semibold text-black"> 
                            What is the process of adopting a child
                         </span>

                        <svg class="w-6 h-6 text-gray-400" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                        </svg>
                    </button>

                    <div class="hidden px-4 pb-5 sm:px-6 sm:pb-6">
                        <p>
                            The process of adopting a child can vary depending on the country you are adopting from. In general, the process involves completing an application, attending an orientation, completing a home study, and attending training classes. Once you have completed these steps, you will be matched with a child and the adoption will be finalized.
                        </p>
                    </div>
                </div>
            </div>

            <div class="transition-all duration-200 bg-white border border-gray-200 cursor-pointer hover:bg-gray-50">
                <button type="button" class="flex items-center justify-between w-full px-4 py-5 sm:p-6">
                    <span class="flex text-lg font-semibold text-black">
                        What is the difference between domestic and international adoption? Which one is right for me? 
                        </span>

                    <svg class="w-6 h-6 text-gray-400" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                </button>

                <div class="hidden px-4 pb-5 sm:px-6 sm:pb-6">
                    <p>
                        Domestic adoption is the process of adopting a child from your own country, while international adoption is the process of adopting a child from another country. The right choice for you will depend on your personal preferences and circumstances. Domestic adoption is typically less expensive and has a shorter waiting period, while international adoption can be more expensive and take longer to complete.
                    </p>
                </div>
            </div>
        </div>

        <p class="text-center text-gray-600 textbase mt-9">Didn’t find the answer you are looking for? <a href="contact.jsp" title="" class="font-medium text-blue-600 transition-all duration-200 hover:text-blue-700 focus:text-blue-700 hover:underline">Contact our support</a></p>
    </div>
</section>

<section class="py-10 bg-gray-100 sm:py-16 lg:py-24">
    <div class="px-4 mx-auto max-w-7xl sm:px-6 lg:px-8">
        <div class="max-w-2xl mx-auto text-center">
            <h2 class="text-3xl font-bold leading-tight text-black sm:text-4xl lg:text-5xl">How do we make everyone happy</h2>
            <p class="max-w-lg mx-auto mt-4 text-base leading-relaxed text-gray-600">
                We are here to help you. Our goal is to make everyone happy. We have a team of experts who are dedicated to helping you find your forever home.
            </p>
        </div>

        <ul class="max-w-md mx-auto mt-16 space-y-12">
            <li class="relative flex items-start">
                <div class="-ml-0.5 absolute mt-0.5 top-14 left-8 w-px border-l-4 border-dotted border-gray-300 h-full" aria-hidden="true"></div>

                <div class="relative flex items-center justify-center flex-shrink-0 w-16 h-16 bg-white rounded-full shadow">
                    <svg class="w-10 h-10 text-fuchsia-600" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                    </svg>
                </div>
                <div class="ml-6">
                    <h3 class="text-lg font-semibold text-black">
                        Create an account
                    </h3>
                    <p class="mt-4 text-base text-gray-600">
                        First step is to create an account. You can create an account by clicking on the sign up button. Fill in your details and you are good to go.
                    </p>
                </div>
            </li>

            <li class="relative flex items-start">
                <div class="-ml-0.5 absolute mt-0.5 top-14 left-8 w-px border-l-4 border-dotted border-gray-300 h-full" aria-hidden="true"></div>

                <div class="relative flex items-center justify-center flex-shrink-0 w-16 h-16 bg-white rounded-full shadow">
                    <svg class="w-10 h-10 text-fuchsia-600" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M15 15l-2 5L9 9l11 4-5 2zm0 0l5 5M7.188 2.239l.777 2.897M5.136 7.965l-2.898-.777M13.95 4.05l-2.122 2.122m-5.657 5.656l-2.12 2.122" />
                    </svg>
                </div>
                <div class="ml-6">
                    <h3 class="text-lg font-semibold text-black">Find the Star</h3>
                    <p class="mt-4 text-base text-gray-600">
                        Once you have created an account, you can start searching for the perfect child.
                    </p>
                </div>
            </li>

            <li class="relative flex items-start">
                <div class="relative flex items-center justify-center flex-shrink-0 w-16 h-16 bg-white rounded-full shadow">
                    <svg class="w-10 h-10 text-fuchsia-600" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M13 10V3L4 14h7v7l9-11h-7z" />
                    </svg>
                </div>
                <div class="ml-6">
                    <h3 class="text-lg font-semibold text-black">Adopt & Approve</h3>
                    <p class="mt-4 text-base text-gray-600">
                        Once you have found the perfect child, you can start the adoption process. Our team will guide you through the process and help you every step of the way. Once the adoption is approved, you can bring your child home.
                    </p>
                </div>
            </li>
        </ul>
    </div>
</section>

<section class="py-10 bg-gray-100 sm:py-16 lg:py-24">
    <div class="max-w-5xl px-4 mx-auto sm:px-6 lg:px-8">
        <div class="max-w-2xl mx-auto text-center">
            <h2 class="text-3xl font-bold leading-tight text-black sm:text-4xl lg:text-5xl">Numbers tell our story</h2>
            <p class="mt-3 text-xl leading-relaxed text-gray-600 md:mt-8">
                We have been in business for over 20 years. We have helped thousands of children find their forever home. Our team is dedicated to helping you every step of the way.
            </p>
        </div>

        <div class="grid grid-cols-1 gap-8 mt-10 text-center lg:mt-24 sm:gap-x-8 md:grid-cols-3">
            <div>
                <h3 class="font-bold text-7xl">
                    <span class="text-transparent bg-clip-text bg-gradient-to-r from-fuchsia-600 to-blue-600"> 6+ </span>
                </h3>
                <p class="mt-4 text-xl font-medium text-gray-900">Years in business</p>
                <p class="text-base mt-0.5 text-gray-500">Creating the successful path</p>
            </div>

            <div>
                <h3 class="font-bold text-7xl">
                    <span class="text-transparent bg-clip-text bg-gradient-to-r from-fuchsia-600 to-blue-600"> 4821 </span>
                </h3>
                <p class="mt-4 text-xl font-medium text-gray-900">Happiness delivered</p>
                <p class="text-base mt-0.5 text-gray-500">In last 6 years</p>
            </div>

            <div>
                <h3 class="font-bold text-7xl">
                    <span class="text-transparent bg-clip-text bg-gradient-to-r from-fuchsia-600 to-blue-600"> 37+ </span>
                </h3>
                <p class="mt-4 text-xl font-medium text-gray-900">Team members</p>
                <p class="text-base mt-0.5 text-gray-500">Working for your success</p>
            </div>
        </div>
    </div>
</section>
<section class="py-10 bg-gray-100 sm:py-16 lg:py-24">
    <div class="px-4 mx-auto max-w-7xl sm:px-6 lg:px-8">
        <div class="max-w-2xl mx-auto text-center">
            <h2 class="text-3xl font-bold leading-tight text-gray-800 sm:text-4xl lg:text-5xl">Trusted by <span class="text-blue-600">30k+</span> world class companies & NGO</h2>
        </div>

        <div class="grid max-w-xl grid-cols-1 mx-auto mt-8 text-center lg:max-w-full sm:mt-12 lg:mt-20 lg:grid-cols-3 gap-x-6 xl:gap-x-12 gap-y-6">
            <div class="overflow-hidden bg-white rounded-md shadow">
                <div class="px-8 py-12">
                    <div class="relative w-24 h-24 mx-auto">
                        <img class="relative object-cover w-24 h-24 mx-auto rounded-full" src="https://cdn.rareblocks.xyz/collection/celebration/images/testimonials/1/avatar-1.jpg" alt="" />
                        <div class="absolute top-0 right-0 flex items-center justify-center bg-blue-600 rounded-full w-7 h-7">
                            <svg class="w-4 h-4 text-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
                                <path
                                    d="M20.309 17.708C22.196 15.66 22.006 13.03 22 13V5a1 1 0 0 0-1-1h-6c-1.103 0-2 .897-2 2v7a1 1 0 0 0 1 1h3.078a2.89 2.89 0 0 1-.429 1.396c-.508.801-1.465 1.348-2.846 1.624l-.803.16V20h1c2.783 0 4.906-.771 6.309-2.292zm-11.007 0C11.19 15.66 10.999 13.03 10.993 13V5a1 1 0 0 0-1-1h-6c-1.103 0-2 .897-2 2v7a1 1 0 0 0 1 1h3.078a2.89 2.89 0 0 1-.429 1.396c-.508.801-1.465 1.348-2.846 1.624l-.803.16V20h1c2.783 0 4.906-.771 6.309-2.292z"
                                ></path>
                            </svg>
                        </div>
                    </div>
                    <blockquote class="mt-7">
                        <p class="text-lg text-black">“This is the nicest organization I have ever worked with. They are so helpful and caring. I would recommend them to anyone looking to adopt a child.”
                        </p>
                    </blockquote>
                    <p class="text-base font-semibold tex-tblack mt-9">P. Sindhu</p>
                    <p class="mt-1 text-base text-gray-600">Project Manager at Microsoft</p>
                </div>
            </div>

            <div class="overflow-hidden bg-white rounded-md shadow">
                <div class="px-8 py-12">
                    <div class="relative w-24 h-24 mx-auto">
                        <img class="relative object-cover w-24 h-24 mx-auto rounded-full" src="https://cdn.rareblocks.xyz/collection/celebration/images/testimonials/1/avatar-2.jpg" alt="" />
                        <div class="absolute top-0 right-0 flex items-center justify-center bg-blue-600 rounded-full w-7 h-7">
                            <svg class="w-4 h-4 text-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
                                <path
                                    d="M20.309 17.708C22.196 15.66 22.006 13.03 22 13V5a1 1 0 0 0-1-1h-6c-1.103 0-2 .897-2 2v7a1 1 0 0 0 1 1h3.078a2.89 2.89 0 0 1-.429 1.396c-.508.801-1.465 1.348-2.846 1.624l-.803.16V20h1c2.783 0 4.906-.771 6.309-2.292zm-11.007 0C11.19 15.66 10.999 13.03 10.993 13V5a1 1 0 0 0-1-1h-6c-1.103 0-2 .897-2 2v7a1 1 0 0 0 1 1h3.078a2.89 2.89 0 0 1-.429 1.396c-.508.801-1.465 1.348-2.846 1.624l-.803.16V20h1c2.783 0 4.906-.771 6.309-2.292z"
                                ></path>
                            </svg>
                        </div>
                    </div>
                    <blockquote class="mt-7">
                        <p class="text-lg text-black">“Process of adopting a child was so easy and smooth. The team was so helpful and caring. I would recommend them to anyone looking to adopt a child.”</p>
                    </blockquote>
                    <p class="text-base font-semibold tex-tblack mt-9">Rupam Bhakta</p>
                    <p class="mt-1 text-base text-gray-600">Founder at Brain.co</p>
                </div>
            </div>

            <div class="overflow-hidden bg-white rounded-md shadow">
                <div class="px-8 py-12">
                    <div class="relative w-24 h-24 mx-auto">
                        <img class="relative object-cover w-24 h-24 mx-auto rounded-full" src="https://cdn.rareblocks.xyz/collection/celebration/images/testimonials/1/avatar-3.jpg" alt="" />
                        <div class="absolute top-0 right-0 flex items-center justify-center bg-blue-600 rounded-full w-7 h-7">
                            <svg class="w-4 h-4 text-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
                                <path
                                    d="M20.309 17.708C22.196 15.66 22.006 13.03 22 13V5a1 1 0 0 0-1-1h-6c-1.103 0-2 .897-2 2v7a1 1 0 0 0 1 1h3.078a2.89 2.89 0 0 1-.429 1.396c-.508.801-1.465 1.348-2.846 1.624l-.803.16V20h1c2.783 0 4.906-.771 6.309-2.292zm-11.007 0C11.19 15.66 10.999 13.03 10.993 13V5a1 1 0 0 0-1-1h-6c-1.103 0-2 .897-2 2v7a1 1 0 0 0 1 1h3.078a2.89 2.89 0 0 1-.429 1.396c-.508.801-1.465 1.348-2.846 1.624l-.803.16V20h1c2.783 0 4.906-.771 6.309-2.292z"
                                ></path>
                            </svg>
                        </div>
                    </div>
                    <blockquote class="mt-7">
                        <p class="text-lg text-black">“The team was so helpful and caring. They made the process of adopting a child so easy and smooth. I would recommend them to anyone looking to adopt a child.”</p>
                    </blockquote>
                    <p class="text-base font-semibold tex-tblack mt-9">Kiruthiga K.</p>
                    <p class="mt-1 text-base text-gray-600">UX Designer at Google</p>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="pt-10 bg-gray-100 sm:pt-16 lg:pt-24">
    <div class="px-4 mx-auto sm:px-6 lg:px-8 max-w-7xl">
        <div class="max-w-2xl mx-auto text-center">
            <h2 class="text-3xl font-bold leading-tight text-black sm:text-4xl lg:text-5xl lg:leading-tight">Real humans are here to help you building your happiness</h2>
            <p class="mt-6 text-lg text-gray-900">
                We are here to help you. Our team of experts are dedicated to helping you find your forever home. We have been in business for over 20 years and have helped thousands of children find their forever home.
            </p>
            <a href="contact.jsp" title="" class="inline-flex items-center justify-center px-6 py-4 mt-12 text-base font-semibold text-white transition-all duration-200 bg-blue-600 border border-transparent rounded-md hover:bg-blue-700 focus:bg-blue-700" role="button">
                <svg class="w-5 h-5 mr-2 -ml-1" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
                </svg>
                Contact our support
            </a>
        </div>
    </div>

    <div class="container mx-auto 2xl:px-12">
        <img class="w-full mt-6" src="https://cdn.rareblocks.xyz/collection/celebration/images/team/4/group-of-people.png" alt="" />
    </div>
</section>


<section class="py-12 bg-gradient-to-r from-fuchsia-600 to-blue-600">
    <div class="px-4 mx-auto sm:px-6 lg:px-8 max-w-7xl">
        <div class="text-center xl:flex xl:items-center xl:justify-between xl:text-left">
            <div class="xl:flex xl:items-center xl:justify-start">
                
                <p class="mt-5 text-sm text-white xl:ml-6 xl:mt-0">© Copyright 2024 Java Jedis</p>
            </div>

            <div class="items-center mt-8 xl:mt-0 xl:flex xl:justify-end xl:space-x-8">
                <ul class="flex flex-wrap items-center justify-center gap-x-8 gap-y-3 xl:justify-end">
                    <li>
                        <a href="#" title="" class="text-sm text-white transition-all duration-200 hover:text-opacity-80 focus:text-opacity-80"> About </a>
                    </li>

                    <li>
                        <a href="#" title="" class="text-sm text-white transition-all duration-200 hover:text-opacity-80 focus:text-opacity-80"> Services </a>
                    </li>

                    <li>
                        <a href="#" title="" class="text-sm text-white transition-all duration-200 hover:text-opacity-80 focus:text-opacity-80"> Privacy Policy </a>
                    </li>

                    <li>
                        <a href="#" title="" class="text-sm text-white transition-all duration-200 hover:text-opacity-80 focus:text-opacity-80"> Terms & Conditions </a>
                    </li>

                    <li>
                        <a href="#" title="" class="text-sm text-white transition-all duration-200 hover:text-opacity-80 focus:text-opacity-80"> Support </a>
                    </li>
                </ul>

                <div class="w-full h-px mt-8 mb-5 xl:w-px xl:m-0 xl:h-6 bg-gray-50/20"></div>

                <ul class="flex items-center justify-center space-x-8 xl:justify-end">
                    <li>
                        <a href="#" title="" class="block text-white transition-all duration-200 hover:text-opacity-80 focus:text-opacity-80">
                            <svg class="w-6 h-6" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
                                <path
                                    d="M19.633 7.997c.013.175.013.349.013.523 0 5.325-4.053 11.461-11.46 11.461-2.282 0-4.402-.661-6.186-1.809.324.037.636.05.973.05a8.07 8.07 0 0 0 5.001-1.721 4.036 4.036 0 0 1-3.767-2.793c.249.037.499.062.761.062.361 0 .724-.05 1.061-.137a4.027 4.027 0 0 1-3.23-3.953v-.05c.537.299 1.16.486 1.82.511a4.022 4.022 0 0 1-1.796-3.354c0-.748.199-1.434.548-2.032a11.457 11.457 0 0 0 8.306 4.215c-.062-.3-.1-.611-.1-.923a4.026 4.026 0 0 1 4.028-4.028c1.16 0 2.207.486 2.943 1.272a7.957 7.957 0 0 0 2.556-.973 4.02 4.02 0 0 1-1.771 2.22 8.073 8.073 0 0 0 2.319-.624 8.645 8.645 0 0 1-2.019 2.083z"
                                ></path>
                            </svg>
                        </a>
                    </li>

                    <li>
                        <a href="#" title="" class="block text-white transition-all duration-200 hover:text-opacity-80 focus:text-opacity-80">
                            <svg class="w-6 h-6" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
                                <path d="M13.397 20.997v-8.196h2.765l.411-3.209h-3.176V7.548c0-.926.258-1.56 1.587-1.56h1.684V3.127A22.336 22.336 0 0 0 14.201 3c-2.444 0-4.122 1.492-4.122 4.231v2.355H7.332v3.209h2.753v8.202h3.312z"></path>
                            </svg>
                        </a>
                    </li>

                    <li>
                        <a href="#" title="" class="block text-white transition-all duration-200 hover:text-opacity-80 focus:text-opacity-80">
                            <svg class="w-6 h-6" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
                                <path d="M11.999 7.377a4.623 4.623 0 1 0 0 9.248 4.623 4.623 0 0 0 0-9.248zm0 7.627a3.004 3.004 0 1 1 0-6.008 3.004 3.004 0 0 1 0 6.008z"></path>
                                <circle cx="16.806" cy="7.207" r="1.078"></circle>
                                <path
                                    d="M20.533 6.111A4.605 4.605 0 0 0 17.9 3.479a6.606 6.606 0 0 0-2.186-.42c-.963-.042-1.268-.054-3.71-.054s-2.755 0-3.71.054a6.554 6.554 0 0 0-2.184.42 4.6 4.6 0 0 0-2.633 2.632 6.585 6.585 0 0 0-.419 2.186c-.043.962-.056 1.267-.056 3.71 0 2.442 0 2.753.056 3.71.015.748.156 1.486.419 2.187a4.61 4.61 0 0 0 2.634 2.632 6.584 6.584 0 0 0 2.185.45c.963.042 1.268.055 3.71.055s2.755 0 3.71-.055a6.615 6.615 0 0 0 2.186-.419 4.613 4.613 0 0 0 2.633-2.633c.263-.7.404-1.438.419-2.186.043-.962.056-1.267.056-3.71s0-2.753-.056-3.71a6.581 6.581 0 0 0-.421-2.217zm-1.218 9.532a5.043 5.043 0 0 1-.311 1.688 2.987 2.987 0 0 1-1.712 1.711 4.985 4.985 0 0 1-1.67.311c-.95.044-1.218.055-3.654.055-2.438 0-2.687 0-3.655-.055a4.96 4.96 0 0 1-1.669-.311 2.985 2.985 0 0 1-1.719-1.711 5.08 5.08 0 0 1-.311-1.669c-.043-.95-.053-1.218-.053-3.654 0-2.437 0-2.686.053-3.655a5.038 5.038 0 0 1 .311-1.687c.305-.789.93-1.41 1.719-1.712a5.01 5.01 0 0 1 1.669-.311c.951-.043 1.218-.055 3.655-.055s2.687 0 3.654.055a4.96 4.96 0 0 1 1.67.311 2.991 2.991 0 0 1 1.712 1.712 5.08 5.08 0 0 1 .311 1.669c.043.951.054 1.218.054 3.655 0 2.436 0 2.698-.043 3.654h-.011z"
                                ></path>
                            </svg>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>

    
<script>
    // Function for the FAQ accordion
    document.querySelectorAll('.bg-white').forEach((item) => {
        item.addEventListener('click', () => {
            item.classList.toggle('bg-gray-50');
            item.querySelector('svg').classList.toggle('rotate-180');
            item.querySelector('div').classList.toggle('hidden');
        });
    });


</script>
    
  </body>
</html>
