/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./themes/slickteam/login/**/*.ftl",
    "./themes/slickteam/email/html/**/*.ftl",
  ],
  theme: {
    fontFamily: {
      sans: ["Roboto", "Helvetica", "Arial", "sans-serif"],
      roboto: ["Roboto", "sans-serif"],
    },
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
        secondary: {
          50: "#edf9ff",
          100: "#d6f0ff",
          200: "#b5e7ff",
          300: "#83d9ff",
          400: "#48c2ff",
          500: "#1ea1ff",
          600: "#0682ff",
          700: "#0068f1",
          800: "#0854c5",
          900: "#0d4a9b",
          950: "#0e2d5d",
        },
      },
    },
  },
};
