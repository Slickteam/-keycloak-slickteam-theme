/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./themes/slickteam/login/**/*.ftl",
    "./themes/slickteam/email/html/**/*.ftl",
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          50: "#fffbec",
          100: "#fff7d3",
          200: "#ffeba5",
          300: "#ffda6d",
          400: "#ffbe32",
          500: "#ffa60a",
          600: "#f18700",
          700: "#cc6902",
          800: "#a1510b",
          900: "#82440c",
          950: "#462004",
        },
      },
    },
  },
};
