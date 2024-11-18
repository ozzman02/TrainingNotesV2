import globals from "globals";
import pluginJs from "@eslint/js";

export default [
  {
    languageOptions: { 
      globals: globals.browser,
      ecmaVersion: 6 
    },
    rules: {
      semi: ["error", "always"]
    }
  },
  pluginJs.configs.recommended,
];