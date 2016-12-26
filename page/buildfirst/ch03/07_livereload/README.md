# Embracing LiveReload

[![livereload][1]][2]

Enabling LiveReload, the browser technology that does browser refreshing for us, couldn't be easier. We just need an extra target in our `watch` task. Something like this will do the trick:

```js
livereload: {
  options: {
    livereload: true
  },
  files: [
    'build/**/*'
  ]
}
```

We then need to install the browser extension. [Instructions][3] can be found here. Once we did both those things, it will just be a matter of following along a few simple steps.

- Visit `http://localhost:3000/`
- Remember to enable the browser extension, by clicking on it
- Change something in the `public` directory
- Wait for the build to complete
- Watch in astonishment how your browser refreshes itself.

![balls.png][4]

  [1]: http://i.imgur.com/oUQcXGX.png
  [2]: http://livereload.com/
  [3]: http://feedback.livereload.com/knowledgebase/articles/86242
  [4]: http://i.imgur.com/qFtOUcQ.gif
