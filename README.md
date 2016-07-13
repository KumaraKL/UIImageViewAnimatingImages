Animate set of Images within the UIImageView

Use this code:
let images = ["test1.jpg", "test2.jpg", "test3.jpg"]
        let animationInfo = ImageViewAnimationObj(images:images, animateDuration: 4,frequentImageSwitch: 8, transitionType: .Push, repeats: true)
        imgView.animateImages(animationInfo)

[![IMAGE ALT TEXT HERE](https://youtu.be/fUV6h04L-34)](https://youtu.be/fUV6h04L-34)

<a href="http://www.youtube.com/watch?feature=player_embedded&v=https://youtu.be/fUV6h04L-34
" target="_blank"><img src="http://img.youtube.com/vi/https://youtu.be/fUV6h04L-34/0.jpg" 
alt="Click here to see the effects" width="240" height="180" border="10" /></a>
