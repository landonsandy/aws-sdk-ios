/*
 * Copyright 2010-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#import "EC2ConfirmProductInstanceRequest.h"


@implementation EC2ConfirmProductInstanceRequest

@synthesize productCode;
@synthesize instanceId;


-(id)init
{
    if (self = [super init]) {
        productCode = nil;
        instanceId  = nil;
    }

    return self;
}

-(id)initWithProductCode:(NSString *)theProductCode andInstanceId:(NSString *)theInstanceId
{
    if (self = [self init]) {
        self.productCode = theProductCode;
        self.instanceId  = theInstanceId;
    }

    return self;
}



-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"ProductCode: %@,", productCode] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"InstanceId: %@,", instanceId] autorelease]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return [buffer autorelease];
}



-(void)dealloc
{
    [productCode release];
    [instanceId release];

    [super dealloc];
}


@end
