Animate set of Images within the UIImageView

Use this code:
let images = ["test1.jpg", "test2.jpg", "test3.jpg"]
        let animationInfo = ImageViewAnimationObj(images:images, animateDuration: 4,frequentImageSwitch: 8, transitionType: .Push, repeats: true)
        imgView.animateImages(animationInfo)

[![IMAGE ALT TEXT HERE](https://youtu.be/fUV6h04L-34)](https://youtu.be/fUV6h04L-34)

