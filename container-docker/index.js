const express = require('express')
const app = express()

const port = 3000

app.get('/', (_, res) => res.send('hello ecs'))
app.listen(port, () => console.log('Listening on port 3000'))