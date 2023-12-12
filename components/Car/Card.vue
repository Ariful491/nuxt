<script setup lang="ts">


import heartFilled from "@/assets/heartFilled.png"
import heartOutline from "@/assets/heartOutline.png"

interface Car {
  id: number;
  name: string;
  description: string;
  price: number;
  url: string;
}


const props = defineProps({
  car: Object as () => Car,
})
const favored = useState(`favored-${props.car!.id}`, () => {
  return false;
});
</script>

<template>
  <div class="w-full relative shadow-sm  rounded-xl border">
    <!-- CAR CARD          -->
    <div class="shadow border w-full overflow-hidden mb-5 cursor-pointer h-[200px]">

      <img :src="favored?heartFilled:heartOutline" class="absolute w-7 right-5 top-2 z-20" @click="favored=!favored"/>
      <div class="flex h-full" @click="navigateTo(`/car/${car!.name}-${car!.id}`)">
        <NuxtImg :src="car!.url" alt="" class="w-[300px] h-full"/>
        <div class="p-4 flex flex-col">
          <div>
            <h1 class="text-2xl text-blue-700">
              {{ car.name }}
            </h1>
            <p class="text-gray-700">
              {{ car.description }}
            </p>
            <h1 class=" mt-12 text-xl">
              $ {{ car.price }}
            </h1>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>