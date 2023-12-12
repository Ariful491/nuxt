<script setup lang="ts">
import {useLocalStorage} from "@vueuse/core";

const {cars} = useCars();


interface Favorite {
  id: number
}

const favorites = useLocalStorage<Favorite>("favorites",  [])

const handleFavorite = (id: number) => {

  const isFavorite = favorites.value.some((fav: { id: number; }) => fav.id === id);

  if (isFavorite) {
    // If the car is already in favorites, remove it
    favorites.value = favorites.value.filter((fav: { id: number; }) => fav.id !== id);
  } else {
    // If the car is not in favorites, add it
    favorites.value.push({id});

  }


/*  if (id in favorite.value) {
    delete favorite[id]
  } else {
    favorite.value == {
      ...favorite.value, ['id']: true
    }*/

}
</script>
<template>
  <div>
    <CarCard v-for="car in cars" :key="car.id" :car="car"/>
  </div>
</template>
<style scoped>

</style>