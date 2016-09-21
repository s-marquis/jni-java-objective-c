#include <stdio.h>
#include <jni.h>

#include <Foundation/Foundation.h>

int main(int argc, char **argv) 
{
    NSLog(@"Starting\n");
    // launch JVM
    JavaVM *jvm;
    JNIEnv *env;    
    JavaVMInitArgs args;
    JavaVMOption options;
    args.version = JNI_VERSION_1_8;
    args.nOptions = 1;
    options.optionString = "-Djava.class.path=./";
    args.options = &options;
    args.ignoreUnrecognized = 0;
    int  rv = JNI_CreateJavaVM(&jvm, (void**)&env, &args);
    if (rv < 0 || !env) NSLog(@"Unable to Launch JVM %d\n",rv);
    else  NSLog(@"Launched JVM\n");
    if(env == NULL)
        return 1;
    // get java class and method to invoke
    jclass WarnAppChartDisplay;
    jmethodID display;
    WarnAppChartDisplay = (*env)->FindClass(env, "WarnAppChartDisplay");
    display = (*env)->GetStaticMethodID(env, WarnAppChartDisplay, "display", "(I)I");
    // invoke static method 
    (*env)->CallStaticVoidMethod(env, WarnAppChartDisplay, display, NULL);
    return 0;
}
