<template>
  <div>
    <!-- Bagian pertama yaitu category -->
    <v-container grid-list-nd>
      <v-subheader>
        Semua Barang
        <v-spacer></v-spacer>
      </v-subheader>
      <v-layout row wrap>
        <!-- lakukan perulangan pada properti gadgets -->
        <v-flex v-for="(gadget, index) in gadgets" :key="index" xs6>
          <v-card :to="'/gadget/' + gadget.slug">
            <!-- untuk load image supaya lebih rapi akan kita buatkan method getimage -->
            <v-img :src="getImage('/gadgets/'+gadget.image)" height="150px">
              <v-container fill-height fluid pa-2>
                <v-layout fill-height>
                  <v-flex xs12 align-end flexbox>
                    <!-- nama caetegory-nya akan ditampilkan disini -->
                    <span class="title white--text text-block" v-text="gadget.name"></span>
                  </v-flex>
                </v-layout>
              </v-container>
            </v-img>

            <!-- icon dummynya saja, nantinya kamu bisa sesuaikan -->
            <v-card-actions>
              <v-spacer></v-spacer>
              <v-btn icon>
                <v-icon>favorite</v-icon>
              </v-btn>
              <v-btn icon>
                <v-icon>bookmark</v-icon>
              </v-btn>
              <v-btn icon>
                <v-icon>share</v-icon>
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-flex>
      </v-layout>
    </v-container>
    <template>
      <div class="text-xs-center">
        <!-- kode untuk link paging halaman -->
        <v-pagination v-model="page" @input="go" :length="lengthPage" :total-visible="4"></v-pagination>
      </div>
    </template>
  </div>
</template>
<script>
export default {
  data() {
    return {
      gadgets: [],
      page: 0,
      lengthPage: 0,
    };
  },
  methods: {
    go() {
      let url = "/gadgets";
      if (this.page > 0) url = "/gadgets?page=" + this.page;
      this.axios
        .get(url)
        .then((res) => {
          let res_data = res.data;
          let gadgets = res_data.data;
          this.lengthPage = res_data.meta.last_page; // jumlah halaman di dapat dari meta endpoint gadgets
          this.gadgets = gadgets; // daftar category  dari endpoint categories
        })
        .catch((err) => {
          console.log(err.res);
        });
    },
  },
  created() {
    this.go();
  },
};
</script>
<style scoped>
/* mengatur posisi judul */
.text-block {
  position: absolute;
  bottom: 5px;
  left: 5px;
  background-color: black;
  padding-left: 5px;
  padding-right: 5px;
  opacity: 0.7;
  width: 100%;
}
</style>