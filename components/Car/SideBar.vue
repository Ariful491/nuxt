<script setup lang="ts">
const modal = ref({
  make: false,
  location: false,
  price: false
})

const city = ref("");
const route = useRoute();


const updateModal = (variable: 'make' | 'location' | 'price') => {
  modal.value[variable] = !modal.value[variable]
}

const changeLocation = () => {
  if (!city.value ) return;

  if(!isNaN(parseInt(city.value))){
    throw  createError({
      statusCode : 400,
      message:"Invalid City Formate."
    })
  }
  updateModal('location')
  navigateTo(`/city/${city.value}/car/${route.params.make}`)
  city.value = "";
}

</script>
<template>
  <div class="shadow border w-64 mr-10 z-30 h-[190px]">
    <div class="p-5 flex justify-between relative cursor-pointer border-b">
      <h3>
        Location
      </h3>
      <h3 @click="updateModal('location')" class="text-blue-400 capitalize">
        {{ route.params.city }}
      </h3>

      <div v-if="modal.location" class="absolute border shadow left-56 p-5 top-1 -m-1 bg-white">
        <input type="text" v-model="city" class="border focus:outline-none p-1 rounded"/>
        <button @click="changeLocation" class="bg-blue-400  w-full mt-2 rounded text-white p-1">
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
</template>

<style scoped>

</style>