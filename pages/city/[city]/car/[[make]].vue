<script setup lang="ts">
</script>
<template>
  <div class="mx-auto mt-4 max-w-7xl space-y-4 px-4 xs:px-8 sm:px-10 lg:px-16 pb-16">
    <div class="mt-32 flex">
      <!-- CAR SIDE BAR     -->
     <CarSideBar/>
      <!-- CAR SIDE BAR     -->


      <!-- CAR CARDS     -->
      <div class="w-full">
        <!-- CAR CARD          -->
        <div class="shadow border w-full overflow-hidden mb-5 cursor-pointer h-[200px]">
          <div class="flex h-full">
            <img src="https://assets.fastly.carvana.io/home-assets/nba/civic.png" alt="" class="w-[300px] h-full">
            <div class="p-4 flex flex-col">
              <div>
                <h1 class="text-2xl text-blue-700">
                  Volvo XC40
                </h1>
                <p class="text-gray-700">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                </p>
                <h1 class=" mt-12 text-xl">
                  $39,500
                </h1>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- CAR CARDS     -->
    </div>
  </div>
</template>
<style scoped>

</style>