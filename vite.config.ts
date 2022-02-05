/// <reference types="vitest" />
/// <reference types="vite/client" />

import { defineConfig } from 'vite';
import reactRefresh from '@vitejs/plugin-react-refresh';
import createReScriptPlugin from '@jihchi/vite-plugin-rescript';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [reactRefresh(), createReScriptPlugin()],
  test: {
    include: ['tests/**/*_test.bs.js'],
    globals: true,
    environment: 'jsdom',
    setupFiles: './tests/setup.ts',
  },
});
