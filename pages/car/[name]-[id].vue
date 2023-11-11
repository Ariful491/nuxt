<script setup lang="ts">
import {definePageMeta} from "#imports";

const route = useRoute();

useHead({
  title: `${route.params.name}`
})

definePageMeta({
  layout: "custom"
})
</script>

<template>
  <!-- CAR DETAIL PAGE -->

    <div>
      <!-- CAR HERO -->
      <CarDetailHero/>
      <!-- CAR HERO -->

      <!-- CAR ATTRIBUTES -->
      <CarDetailAttributes/>
      <!-- CAR ATTRIBUTES -->

      <!-- CAR DESCRIPTION -->
      <CarDetailDescription/>
      <!-- CAR DESCRIPTION -->

      <!-- CAR CONTACT -->
      <CarDetailContact/>
      <!-- CAR CONTACT -->

    </div>



  <!-- CAR DETAIL PAGE   -->
</template>

<style scoped>

</style>