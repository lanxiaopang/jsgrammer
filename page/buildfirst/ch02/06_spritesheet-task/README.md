# Spritesheet Task

![spritesheet.png][1]

This example shows how to configure the `sprite` Grunt task provided by `grunt-spritesmith`, as discussed in Chapter 2 of the book.

In the example, we'll be setting up image spriting. This is something that's very common in game-engine land. Think of it as asset bundling for images.

To run this example, enter the following command in your terminal.

```shell
grunt sprite:icons
```

That will generate the necessary CSS and the spritesheet image.

A more complete example can be found at [bevacqua/grunt-spriting-example][2], as it also has a view, a server that serves the view, and some CSS so that you can **start to use spritesheets immediately**!

### Troubleshooting

If you run into issues installing [grunt-spritesmith][3], please go through [their documentation][3]. If you still have problems, [create an issue in this repository][4] detailing the problem that you're having, as well as your platform version (Windows, OSX, Ubuntu, etc), and any other details you can muster.

  [1]: http://i.imgur.com/1ud2mRR.gif "Megaman Spritesheet"
  [2]: https://github.com/bevacqua/grunt-spriting-example
  [3]: https://github.com/Ensighten/grunt-spritesmith
  [4]: https://github.com/buildfirst/buildfirst/issues/new
