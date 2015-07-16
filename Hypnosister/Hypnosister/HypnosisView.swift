//
//  HypnosisView.swift
//  Hypnosister
//
//  Created by Robbie on 15/7/9.
//  Copyright (c) 2015年 Ted Wei. All rights reserved.
//

import UIKit

class HypnosisView :  UIView{
    
    var circleColor: UIColor
 
    override func drawRect(rect: CGRect) {
        //self frame
        var selfBounds: CGRect = self.bounds
        
        var center = CGPoint() //CGPoint is struct
        center.x = selfBounds.origin.x + selfBounds.size.width/2
        center.y = selfBounds.origin.y + selfBounds.size.height/2
        
        var radius: CGFloat = min (selfBounds.size.width, selfBounds.size.height)/2.0
        
        var beierPath = UIBezierPath()
        
        //multiple arcs
        for(var currentRadius = radius; currentRadius > 0; currentRadius -= 20){
            
            //move to new start point
            beierPath.moveToPoint(CGPointMake(center.x + currentRadius, center.y))
            
            beierPath.addArcWithCenter(center, radius: currentRadius, startAngle: 0, endAngle: CGFloat(radius), clockwise: true)
        }
        
        
        
        beierPath.lineWidth = 10
        
//        UIColor.lightGrayColor().setStroke()//Sets the color of subsequent stroke operations
        circleColor.setStroke() //using property circleColor to draw
        
        beierPath.stroke()
        
        //**image and line have shadow effect**
        let context = UIGraphicsGetCurrentContext()
        
        CGContextSaveGState(context)
        CGContextSetShadow(context, CGSize(width: 5, height: 5), CGFloat(1.0))
        
        //draw image
        let img = UIImage(named: "t2.jpg")
        var imgRect = CGRect(x: 50, y: 50, width: 100, height: 100)
        img!.drawInRect(imgRect)
        
        //draw line using Core Graphics
        
        CGContextSetRGBStrokeColor(context, 1, 0, 0, 1)
        var path = CGPathCreateMutable()
        CGPathMoveToPoint(path, nil, 10, 30)
        CGPathAddLineToPoint(path, nil, 50, 100)
        
        CGContextAddPath(context, path)
        CGContextStrokePath(context)
        
        //no need to release path?
        
        //**restore context, there will be no shadow afterwards
        CGContextRestoreGState(context)
        
    }
    
    override init(frame: CGRect) {
        //Swift requires that you assign values to all properties of a class before you call the initializer of its superclass.
        circleColor = UIColor.redColor()
        
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        
        
    }

    required init(coder aDecoder: NSCoder) {
        circleColor = UIColor.redColor()

        super.init(coder: aDecoder)
    }
    
    //UIView
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        print("Circle is being touched.")
        
        //arc4random()%100-->0...100
        var red = (arc4random()%100)/100
        var green = (arc4random()%100)/100
        var blue = (arc4random()%100)/100
        
        var randomColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
        circleColor = randomColor
        setNeedsDisplay()
        
    }
    


}