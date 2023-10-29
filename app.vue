<template>
  <div>
    <!-- NAVBAR -->
    <header class="sticky top-0 z-50  flex justify-between space-x-1 shadow-md p-4  items-center border-b bg-white">
      <a href="" class="text-2xl font-mono uppercase font-bold"> Car Mover</a>
    </header>
    <!-- NAVBAR -->
    <!-- CAR PAGE  -->
    <div class="mx-auto mt-4 max-w-7xl space-y-4 px-4 xs:px-8 sm:px-10 lg:px-16 pb-16">
      <div class="mt-32 flex">
        <!-- CAR SIDE BAR     -->
        <div class="shadow border w-64 mr-10 z-30 h-[190px]">
          <div class="p-5 flex justify-between relative cursor-pointer border-b">
            <h3>
              Location
            </h3>
            <h3 class="text-blue-400 capitalize">
              Dhaka
            </h3>

            <div class="absolute border shadow left-56 p-5 top-1 -m-1 bg-white">
              <input type="text" class="border focus:outline-none p-1 rounded"/>
              <button class="bg-blue-400  w-full mt-2 rounded text-white p-1">
                Apply
              </button>
            </div>

          </div>
          <div class="p-5 flex justify-between relative cursor-pointer border-b">
            <h3>
              INDIA
            </h3>
            <h3 class="text-blue-400 capitalize">
              BOMBAY
            </h3>
          </div>
          <div class="p-5 flex justify-between relative cursor-pointer border-b">
            <h3>
              PRICE
            </h3>
            <h3 class="text-blue-400 capitalize">
              500/=
            </h3>
          </div>

        </div>
        <!-- CAR SIDE BAR     -->


        <!-- CAR CARDS     -->
        <!-- CAR CARDS     -->
      </div>
    </div>
    <!-- CAR PAGE  -->
  </div>
</template>
<script setup lang="ts">
</script>