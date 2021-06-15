# cj-app
Vue 3.11

IMPORTANT NOTES (In case Backend Service API Integration is required):

    1. The backend endpoint host url is mentioned in .env as well as .env.production. The property name is "VUE_APP_API_URL". An example is mentioned in "HelloWorld.vue".
    2. PLEASE USE THIS PROPERTY ("VUE_APP_API_URL") WHEN YOU ARE TRYING TO CALL A BACKEND API. ALSO DON'T CHANGE THIS PROPERTY ELSE THE APP WILL NOT BUILD PROPERLY AND YOUR SUBMISSION WILL NOT BE SCORED. 
    
PROJECT BUILD STEPS (Make sure that your project is getting built successfully):

    Pre-requisites:
    1. Install http-server module (https://www.npmjs.com/package/http-server).
    2. Install node, npm, @vue-cli (3.11.0) for vue 3.11

    Steps:
    1. Go to the project root directory.
    2. Run the following commands in the terminal/command line to build the app:
            - npm install
            - npm run build --mode=production
    3. Please make sure that your project is built successfully.


CLOUD-IDE SETUP STEPS(follow the below steps in case you are using the Cloud IDE instead of your Local IDE):

    1. Please run the below commands from the project root in a separate terminal to setup live run support in Cloud IDE:
        - chmod 0755 ./chrome-test-setup.sh
        - sh ./chrome-test-setup.sh
    2. Make the port 9515 public
