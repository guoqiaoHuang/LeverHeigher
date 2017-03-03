
require('UIView, UIColor, UILabel')
defineClass("ViewController", {
            viewDidLoad: function() {
            self.super().viewDidLoad();
            self.view().setBackgroundColor(UIColor.brownColor());
//            self.setTitle("whatjs");
            }
            }, {});


defineClass("RNViewController", {
            viewDidLoad: function() {
            self.super().viewDidLoad();
            self.view().setBackgroundColor(UIColor.redColor());
//            self.setTitle("react native");
            
            var width = require('UIScreen').mainScreen().bounds().width
            var btn = require('UIButton').alloc().initWithFrame({x:0, y:100, width:width, height:50})
            btn.setTitle_forState('这个按钮是通过JSPatch动态添加上去的啊', 0)
            btn.addTarget_action_forControlEvents(self, "handleBtn:", 1 << 6)
            btn.setBackgroundColor(require('UIColor').grayColor())
            self.view().addSubview(btn)
            },
            handleBtn: function(sender) {
            console.log('这是动态添加的按钮响应事件')
            },
            
            
            
            
            }, {});
