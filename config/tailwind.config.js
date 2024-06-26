const defaultTheme = require("tailwindcss/defaultTheme")

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
        heebo: ["Heebo", ...defaultTheme.fontFamily.sans],
      },
      colors: {
        lightRed: "#ff6464",
        lightBlue: "#00a8cc",
        darkBlue: "#142850",
        myBlack: "#21243d",
        offWhite: "#edf7fa",
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries"),
  ],
}
