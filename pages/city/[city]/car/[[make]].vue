<script setup lang="ts">
import {useLocalStorage} from "@vueuse/core";

const {cars} = useCars();


interface Favorite {
  id: number
}

const favorite = useLocalStorage<Favorite>("favorites", {})

const handleFavorite = (id: number) => {
  const handleFavorite = (id: number) => {
    const isFavorite = favorites.value.some((fav) => fav.id === id);

    if (isFavorite) {
      // If the car is already in favorites, remove it
      favorites.value = favorites.value.filter((fav) => fav.id !== id);
    } else {
      // If the car is not in favorites, add it
      favorites.value.push({ id });
    }
}
</script>
<template>
  <div>
    <CarCard v-for="car in cars" :key="car.id" :car="car"/>
  </div>
</template>
<style scoped>

</style>