<template>
  <v-app>
    <!-- Component Header -->
    <c-header />

    <!-- Component Sidebar -->
    <c-side-bar />

    <!-- Konten Utama -->
    <v-main>
      <v-slide-y-transition mode="out-in">
        <router-view></router-view>
      </v-slide-y-transition>
    </v-main>

    <!-- Component Footer -->
    <c-footer />

    <c-alert />

    <!-- <v-dialog v-model="dialog" fullscreen hide-overlay transition="dialogbottom-transition">
      <search />
    </v-dialog>-->

    <keep-alive>
      <v-dialog v-model="dialog" fullscreen hide-overlay transition="dialogbottom-transition">
        <component :is="currentComponent"></component>
      </v-dialog>
    </keep-alive>
  </v-app>
</template>
<script>
import { mapGetters, mapActions } from "vuex";
import CHeader from "@/components/CHeader.vue";
import CFooter from "@/components/CFooter.vue";
import CSideBar from "@/components/CSidebar.vue";
import CAlert from "@/components/CAlert.vue";
import Login from "@/views/Login.vue";
import Register from "@/views/Register.vue";
import Checkout from "@/views/Checkout.vue";
import Cart from "@/views/Cart.vue";
export default {
  name: "App",
  components: {
    CHeader,
    CSideBar,
    CFooter,
    CAlert,
    Login,
    Register,
    Checkout,
    Cart,
  },
  methods: {
    ...mapActions({
      setStatusDialog: "dialog/setStatus",
    }),
  },
  computed: {
    ...mapGetters({
      statusDialog: "dialog/status",
      currentComponent: "dialog/component",
    }),
    dialog: {
      get() {
        return this.statusDialog;
      },
      set(value) {
        this.setStatusDialog(value);
      },
    },
  },
};
</script>