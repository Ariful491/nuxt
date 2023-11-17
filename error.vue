<script setup>
const handleReturn = () => {
  navigateTo('/');
}
</script>

<template>
  <div class="flex h-screen justify-center items-center flex-col">
    <h1 class="text-9xl font-semibold">404</h1>
    <p class="mt-7 text-4xl"> page not found.</p>
    <button @click="handleReturn" class="rounded  mt-7 text-1xl bg-blue-900 px-7 py-4 text-white"> GO BACK</button>
  </div>
</template>

<style scoped>

</style>