#include <stdio.h>
#include <jni.h>


int main(int argc, char **argv) 
{
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
    if (rv < 0 || !env) printf("Unable to Launch JVM %d\n",rv);
    else  printf("Launched JVM! :)\n");
    if(env == NULL)
        return 1;
    jclass WarnAppChartDisplay;
    jmethodID display;
    WarnAppChartDisplay = (*env)->FindClass(env, "WarnAppChartDisplay");
    display = (*env)->GetStaticMethodID(env, WarnAppChartDisplay, "display", "(I)I");
    (*env)->CallStaticVoidMethod(env, WarnAppChartDisplay, display, NULL);
    return 0;
}
