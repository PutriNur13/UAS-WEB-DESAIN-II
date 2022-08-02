<template>
  <div>
    <v-subheader>Biodata 1</v-subheader>
    <v-card flat>
      <v-container>
        <v-simple-table>
          <tbody>
            <tr v-for="profil in profil1" :key="profil.key">
              <td>{{profil.key}}</td>
              <td>{{profil.value}}</td>
            </tr>
          </tbody>
        </v-simple-table>
      </v-container>
    </v-card>
    <v-subheader>Biodata 2</v-subheader>
    <v-card flat>
      <v-container>
        <v-simple-table>
          <tbody>
            <tr v-for="profil in profil2" :key="profil.key">
              <td>{{profil.key}}</td>
              <td>{{profil.value}}</td>
            </tr>
          </tbody>
        </v-simple-table>
      </v-container>
    </v-card>
  </div>
</template>
<script>
export default {
  data() {
    return {
      profil1: [
        {
          key: "Nama",
          value: "Putri Nurlaela Sari",
        },
        {
          key: "NIM",
          value: "D112011029",
        },
        {
          key: "Kelas",
          value: "IF-4B",
        },
        {
          key: "Alamat",
          value: "Jl. SMPN 5 Cimahi kp. Bobojong no. 123 D Rt 02 Rw 15 kel. Cipageran",
        },
      ],
      profil2: [
        {
          key: "Nama",
          value: "Rafa Septiani",
        },
        {
          key: "NIM",
          value: "D112011074",
        },
        {
          key: "Kelas",
          value: "IF-4B",
        },
        {
          key: "Alamat",
          value: "Perumahan Nusa Hijau Permai Blok - 10 Cimahi",
        },
      ],
    };
  },
};
</script>