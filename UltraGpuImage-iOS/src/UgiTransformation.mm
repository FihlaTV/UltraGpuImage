//
/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2018 Piasy
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
//


#import "UgiTransformation+Native.h"

#include "ugi_transformation.h"

@implementation UgiTransformation

- (instancetype)init {
    self = [super init];
    if (self) {
        Ugi::Transformation::Size size(480, 640);
        _transformation = new Ugi::Transformation(size, size);
    }
    return self;
}

- (void)dealloc {
    if (_transformation) {
        delete _transformation;
        _transformation = nullptr;
    }
}

- (void)updateInput:(int)width height:(int)height {
    if (_transformation) {
        _transformation->UpdateInput(Ugi::Transformation::Size(width, height));
    }
}

- (void)updateOutput:(int)width height:(int)height {
    if (_transformation) {
        _transformation->UpdateOutput(Ugi::Transformation::Size(width, height));
    }
}

@end
