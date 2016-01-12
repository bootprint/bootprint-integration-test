/* global describe */
/* global it */

var fs = require('fs')
var path = require('path')
var cp = require('child_process')

describe('the bootprint module:', function () {
  fs.readdirSync(__dirname, function (file) {
    if (path.extname(file) === '.sh') {
      it('spec ' + file + ' should run without errors', function () {
        cp.execFileSync(path.join(__dirname, file))
      })
    }
  })
})
