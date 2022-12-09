const cds = require('@sap/cds')

if (process.env.NODE_ENV !== 'production') {
const cds_swagger = require('cds-swagger-ui-express')
cds.on('bootstrap', app => app.use(cds_swagger({
    "basePath": "/$api-docs", // the root path to mount the middleware on
    "apiPath": "", // the root path for the services (useful if behind a reverse proxy)
    "diagram": "true" // whether to render the YUML diagram
})))
}
module.exports = cds.server