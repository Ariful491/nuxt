<script setup lang="ts">
import {definePageMeta, useCars} from "#imports";


const {toTitleCase} = useUtilities()
const route = useRoute();
const {cars} = useCars();
useHead({
  title: `${toTitleCase(route.params.name.toString())}`
})

const car = computed(() => {
  return cars.find((car) => {
    return car.id === Number(route.params.id)
  })
})
definePageMeta({
  layout: "custom"
})

if (!car.value) {
  throw createError({
    statusCode: 404,
    message: 'car was not found.'
  })
}
</script>

<template>
  <!-- CAR DETAIL PAGE -->

  <div v-if="car">

    <!-- CAR HERO -->
    <CarDetailHero :car="car"/>
    <!-- CAR HERO -->

    <!-- CAR ATTRIBUTES -->
    <CarDetailAttributes :features="car.features"/>
    <!-- CAR ATTRIBUTES -->

    <!-- CAR DESCRIPTION -->
    <CarDetailDescription :description="car.description"/>
    <!-- CAR DESCRIPTION -->

    <!-- CAR CONTACT -->
    <CarDetailContact/>
    <!-- CAR CONTACT -->

  </div>


  <!-- CAR DETAIL PAGE   -->
</template>

<style scoped>

</style>