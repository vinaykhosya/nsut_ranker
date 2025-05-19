#!/bin/bash

# Build the client
npm run build

# Prepare Netlify functions directory
mkdir -p netlify/functions
cp -r server/* netlify/functions/
cp shared/* netlify/functions/

# Ensure Netlify recognizes our Firebase setup
echo "Using Firebase for database storage"