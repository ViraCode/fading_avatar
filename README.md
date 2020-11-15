# Fading Avatar 


[![Demo CountPages alpha](https://raw.githubusercontent.com/ViraCode/fading_avatar/master/example/fading-avatar.gif)]

## A fading avatar 
### Simply use it with properties

####  top:
        The space from the top of the screen

####  left: 
        The space from the left side of the screen

#### radius:
        Radius of circle avatar

#### expandTimes:
        Lenght of widget animation. default value is 1
    
####  child:
        Background widget. It should be Scrollable

####  controller: 
        Controller which attached to your child list view

####  reverse:
        Set it true if you want it to be from min size to max size. its default value is false

####  image:
        The Avatar image you want to use

####  border:
        BoxBorder of your image

## Example using: 
[![Demo CountPages alpha](https://raw.githubusercontent.com/ViraCode/fading_avatar/master/example/fading-avatar.gif)]

        ScrollController controller = ScrollController();
        ...
        AvatarStack(
        controller: controller,
        top: 200,
        radius: 150,
        child: ListView(
          controller: controller,
          children: [
            ...[
              Colors.red,
              Colors.blue,
              Colors.blueGrey,
              Colors.deepPurple,
              Colors.green,
              Colors.amber,
              Colors.black,
              Colors.purple,
              Colors.yellow,
              Colors.brown
            ].map((e) => Container(width: 450, height: 200, color: e))
          ],
        ),
      ),


# VIRA CODE
### [Github](github.com/viracode/)