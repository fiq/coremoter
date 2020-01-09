const superagent = require('superagent');

superagent
  .get('https://remoteok.io')
  .end((err, res) => {
    console.log(res);
  })
  
