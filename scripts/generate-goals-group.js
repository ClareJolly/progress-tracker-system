const path = require('path')
const markdownMagic = require('markdown-magic')

const config = {
  debug: false,
  transforms: {
    /* Match <!-- AUTO-GENERATED-CONTENT:START (customTransform:optionOne=hi&optionOne=DUDE) --> */
    customTransform(content, options) {
      console.log('original content in comment block', content)
      console.log('options defined on transform', options)
      // options = { optionOne: hi, optionOne: DUDE}
      return `This will replace all the contents of inside the comment ${
        options.optionOne
      }`
    }
  }
}

const callback = function(updatedContent, outputConfig) {
  console.log('all set!')
}

const markdownPath = path.join(__dirname, '..', './goals/goals-progress-group.md')
markdownMagic(markdownPath, config, callback)
