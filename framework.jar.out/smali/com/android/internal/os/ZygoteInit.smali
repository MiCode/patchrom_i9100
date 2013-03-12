.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    }
.end annotation


# static fields
.field private static final ANDROID_SOCKET_ENV:Ljava/lang/String; = "ANDROID_SOCKET_zygote"

.field static final GC_LOOP_COUNT:I = 0xa

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PARALLEL_LOAD:Z = true

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "preloaded-classes"

#the value of this static final field might be set in the static constructor
.field private static final PRELOAD_GC_THRESHOLD:I = 0x0

.field private static final PRELOAD_RESOURCES:Z = true

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field public static final USAGE_STRING:Ljava/lang/String; = " <\"start-system-server\"|\"\" for startSystemServer>"

.field private static final ZYGOTE_FORK_MODE:Z

.field private static final heapgrowthlimit:Ljava/lang/String;

.field static isError:Z

.field private static isPError:Z

.field static isParallelThreadRunning:Z

.field private static mResources:Landroid/content/res/Resources;

.field private static numberOfPreloadClasses:I

.field private static numberOfPreloadClassesforThread1:I

.field private static numberOfPreloadClassesforThread2:I

.field public static parallelThread:J

.field private static percentageOfClassesforThread1:I

.field private static percentageOfClassesforThread2:I

.field private static sServerSocket:Landroid/net/LocalServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string v0, "dalvik.vm.heapgrowthlimit"

    const-string v1, "32m"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->heapgrowthlimit:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->heapgrowthlimit:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/os/ZygoteInit;->heapgrowthlimit:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    .line 250
    sput-boolean v2, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    .line 251
    sput-boolean v2, Lcom/android/internal/os/ZygoteInit;->isError:Z

    .line 385
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/os/ZygoteInit;->parallelThread:J

    .line 386
    sput-boolean v2, Lcom/android/internal/os/ZygoteInit;->isPError:Z

    .line 387
    sput v2, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    .line 388
    sput v2, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    .line 389
    sput v2, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    .line 390
    const/16 v0, 0x24

    sput v0, Lcom/android/internal/os/ZygoteInit;->percentageOfClassesforThread1:I

    .line 391
    const/16 v0, 0x43

    sput v0, Lcom/android/internal/os/ZygoteInit;->percentageOfClassesforThread2:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    return-void
.end method

.method private static acceptCommandPeer()Lcom/android/internal/os/ZygoteConnection;
    .locals 3

    .prologue
    .line 200
    :try_start_0
    new-instance v1, Lcom/android/internal/os/ZygoteConnection;

    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-boolean p0, Lcom/android/internal/os/ZygoteInit;->isPError:Z

    return p0
.end method

.method static native capgetPermitted(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static closeServerSocket()V
    .locals 3

    .prologue
    .line 213
    :try_start_0
    sget-object v1, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_0

    .line 214
    sget-object v1, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .local v0, ex:Ljava/io/IOException;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    .line 221
    return-void

    .line 216
    .end local v0           #ex:Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 217
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Zygote:  error closing sockets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static native createFileDescriptor(I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static gc()V
    .locals 1

    .prologue
    .line 656
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 661
    .local v0, runtime:Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 662
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 663
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 664
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 665
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 666
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 667
    return-void
.end method

.method static native getpgid(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 5
    .parameter "parsedArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 676
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 679
    const/16 v0, 0x3f

    invoke-static {v0}, Landroid/os/FileUtils;->setUMask(I)I

    .line 681
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 697
    :goto_0
    return-void

    .line 693
    :cond_1
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method static invokeStaticMain(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "loader"
    .parameter "className"
    .parameter "argv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string v4, "main"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 153
    .local v2, m:Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 154
    .local v3, modifiers:I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 155
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main method is not public and static on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    .end local v0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #m:Ljava/lang/reflect/Method;
    .end local v3           #modifiers:I
    :catch_0
    move-exception v1

    .line 137
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing class when invoking static main "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 145
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v0       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 146
    .local v1, ex:Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 148
    .end local v1           #ex:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 149
    .local v1, ex:Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem getting static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 165
    .end local v1           #ex:Ljava/lang/SecurityException;
    .restart local v2       #m:Ljava/lang/reflect/Method;
    .restart local v3       #modifiers:I
    :cond_1
    new-instance v4, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;

    invoke-direct {v4, v2, p2}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    throw v4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "argv"

    .prologue
    .line 751
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 753
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->registerZygoteSocket()V

    .line 754
    const/16 v3, 0xbcc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 756
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    .line 757
    const/16 v3, 0xbd6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 761
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeZygoteSnapshot()V

    .line 764
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 767
    array-length v3, p0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 768
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <\"start-system-server\"|\"\" for startSystemServer>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, caller:Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    .line 800
    .end local v0           #caller:Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    :goto_0
    return-void

    .line 772
    :cond_0
    :goto_1
    :try_start_1
    sget-boolean v3, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/internal/os/ZygoteInit;->isError:Z
    :try_end_1
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v3, :cond_1

    .line 773
    const-wide/16 v3, 0xa

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 774
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "Zygote"

    const-string v4, "Exception in Zygote PC/PR Parallel thread."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 795
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    .line 796
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "Zygote"

    const-string v4, "Zygote died with exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 798
    throw v2

    .line 778
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :cond_1
    const/4 v3, 0x1

    :try_start_4
    aget-object v3, p0, v3

    const-string/jumbo v4, "start-system-server"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 779
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->startSystemServer()Z

    .line 784
    :cond_2
    const-string v3, "Zygote"

    const-string v4, "Accepting command socket connections"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->runSelectLoopMode()V

    .line 792
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    goto :goto_0

    .line 780
    :cond_3
    const/4 v3, 0x1

    aget-object v3, p0, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 781
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <\"start-system-server\"|\"\" for startSystemServer>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
.end method

.method static parallelpreloadClasses()V
    .locals 17

    .prologue
    .line 395
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v8

    .line 396
    .local v8, runtime:Ldalvik/system/VMRuntime;
    const/16 v13, 0xbb8

    new-array v1, v13, [Ljava/lang/String;

    .line 398
    .local v1, classList:[Ljava/lang/String;
    const-class v13, Lcom/android/internal/os/ZygoteInit;

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const-string/jumbo v14, "preloaded-classes"

    invoke-virtual {v13, v14}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 400
    .local v6, is:Ljava/io/InputStream;
    if-nez v6, :cond_0

    .line 401
    const-string v13, "Zygote"

    const-string v14, "Couldn\'t find preloaded-classes."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :goto_0
    return-void

    .line 403
    :cond_0
    const-string v13, "Zygote"

    const-string v14, "Preloading classes..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v3

    .line 412
    .local v3, defaultUtilization:F
    const v13, 0x3f4ccccd

    invoke-virtual {v8, v13}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 415
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 416
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 417
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 420
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v14, 0x100

    invoke-direct {v0, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 423
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 425
    .local v2, count:I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 427
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 428
    const-string v13, "#"

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, ""

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 431
    aput-object v7, v1, v2

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 437
    :cond_2
    const-string v13, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Number of total Classes to prelaod: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    sput v2, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    .line 440
    sget v13, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    sget v14, Lcom/android/internal/os/ZygoteInit;->percentageOfClassesforThread1:I

    mul-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x64

    sput v13, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    .line 442
    const-string v13, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Classes to load for thread1 0~"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v13, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Classes to load for thread2 "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "~"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Lcom/android/internal/os/ZygoteInit$2;

    invoke-direct {v13, v1, v8}, Lcom/android/internal/os/ZygoteInit$2;-><init>([Ljava/lang/String;Ldalvik/system/VMRuntime;)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 487
    .local v12, t1:Ljava/lang/Thread;
    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/lang/Thread;->setPriority(I)V

    .line 490
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 495
    .local v9, startTime:J
    sget v5, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    .local v5, i:I
    :goto_2
    array-length v13, v1

    if-ge v5, v13, :cond_3

    .line 496
    aget-object v7, v1, v5

    .line 497
    if-nez v7, :cond_4

    .line 526
    :cond_3
    const-string v13, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "...preloaded "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sub-int v15, v5, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " classes in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v9

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "ms."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_3
    sget-wide v13, Lcom/android/internal/os/ZygoteInit;->parallelThread:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_8

    sget-boolean v13, Lcom/android/internal/os/ZygoteInit;->isPError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v13, :cond_8

    .line 531
    const-wide/16 v13, 0x14

    :try_start_1
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 535
    :goto_4
    :try_start_2
    const-string v13, "Zygote"

    const-string v14, "Waiting for PC Thread to complete loading"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 538
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #count:I
    .end local v5           #i:I
    .end local v7           #line:Ljava/lang/String;
    .end local v9           #startTime:J
    .end local v12           #t1:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    .line 539
    .local v4, e:Ljava/io/IOException;
    :try_start_3
    const-string v13, "Zygote"

    const-string v14, "Error reading preloaded-classes."

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 543
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 545
    invoke-virtual {v8, v3}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 547
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    goto/16 :goto_0

    .line 503
    .end local v4           #e:Ljava/io/IOException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #count:I
    .restart local v5       #i:I
    .restart local v7       #line:Ljava/lang/String;
    .restart local v9       #startTime:J
    .restart local v12       #t1:Ljava/lang/Thread;
    :cond_4
    :try_start_4
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 504
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v13

    sget v14, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    if-le v13, v14, :cond_5

    .line 509
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 510
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 511
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 495
    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 513
    :catch_1
    move-exception v4

    .line 514
    .local v4, e:Ljava/lang/ClassNotFoundException;
    :try_start_5
    const-string v13, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Class not found for preloading: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    .line 543
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #count:I
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    .end local v5           #i:I
    .end local v7           #line:Ljava/lang/String;
    .end local v9           #startTime:J
    .end local v12           #t1:Ljava/lang/Thread;
    :catchall_0
    move-exception v13

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 545
    invoke-virtual {v8, v3}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 547
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    throw v13

    .line 515
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #count:I
    .restart local v5       #i:I
    .restart local v7       #line:Ljava/lang/String;
    .restart local v9       #startTime:J
    .restart local v12       #t1:Ljava/lang/Thread;
    :catch_2
    move-exception v11

    .line 516
    .local v11, t:Ljava/lang/Throwable;
    :try_start_6
    const-string v13, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error preloading "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    instance-of v13, v11, Ljava/lang/Error;

    if-eqz v13, :cond_6

    .line 518
    check-cast v11, Ljava/lang/Error;

    .end local v11           #t:Ljava/lang/Throwable;
    throw v11

    .line 520
    .restart local v11       #t:Ljava/lang/Throwable;
    :cond_6
    instance-of v13, v11, Ljava/lang/RuntimeException;

    if-eqz v13, :cond_7

    .line 521
    check-cast v11, Ljava/lang/RuntimeException;

    .end local v11           #t:Ljava/lang/Throwable;
    throw v11

    .line 523
    .restart local v11       #t:Ljava/lang/Throwable;
    :cond_7
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 532
    .end local v11           #t:Ljava/lang/Throwable;
    :catch_3
    move-exception v4

    .line 533
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_4

    .line 543
    .end local v4           #e:Ljava/lang/InterruptedException;
    :cond_8
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 545
    invoke-virtual {v8, v3}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 547
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    goto/16 :goto_0
.end method

.method static preload()V
    .locals 3

    .prologue
    const/16 v0, 0x270f

    const/4 v2, 0x0

    .line 259
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 260
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 261
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    .line 263
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/os/ZygoteInit$1;

    invoke-direct {v1}, Lcom/android/internal/os/ZygoteInit$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 274
    const-string v0, "Zygote"

    const-string v1, "!@beginofpreloadClasses()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->parallelpreloadClasses()V

    .line 277
    const-string v0, "Zygote"

    const-string v1, "!@EndofpreloadClasses()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 280
    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 290
    return-void
.end method

.method private static preloadClasses()V
    .locals 15

    .prologue
    const/16 v12, 0x270f

    const/4 v14, 0x0

    .line 300
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    .line 302
    .local v6, runtime:Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-string/jumbo v11, "preloaded-classes"

    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 304
    .local v4, is:Ljava/io/InputStream;
    if-nez v4, :cond_0

    .line 305
    const-string v10, "Zygote"

    const-string v11, "Couldn\'t find preloaded-classes."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    return-void

    .line 307
    :cond_0
    const-string v10, "Zygote"

    const-string v11, "Preloading classes..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 311
    .local v7, startTime:J
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 312
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 316
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v2

    .line 317
    .local v2, defaultUtilization:F
    const v10, 0x3f4ccccd

    invoke-virtual {v6, v10}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 320
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 321
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 322
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 325
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x100

    invoke-direct {v0, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 328
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 330
    .local v1, count:I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 332
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 333
    const-string v10, "#"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-nez v10, :cond_1

    .line 341
    :try_start_1
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 342
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v10

    sget v11, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    if-le v10, v11, :cond_2

    .line 347
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 348
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 349
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 352
    :catch_0
    move-exception v3

    .line 353
    .local v3, e:Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Class not found for preloading: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 368
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #count:I
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    .end local v5           #line:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 369
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    const-string v10, "Zygote"

    const-string v11, "Error reading preloaded-classes."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 373
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 375
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 378
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 379
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    goto/16 :goto_0

    .line 354
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #count:I
    .restart local v5       #line:Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 355
    .local v9, t:Ljava/lang/Throwable;
    :try_start_4
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error preloading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    instance-of v10, v9, Ljava/lang/Error;

    if-eqz v10, :cond_3

    .line 357
    check-cast v9, Ljava/lang/Error;

    .end local v9           #t:Ljava/lang/Throwable;
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 371
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #count:I
    .end local v5           #line:Ljava/lang/String;
    :catchall_0
    move-exception v10

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 373
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 375
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 378
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 379
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    throw v10

    .line 359
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #count:I
    .restart local v5       #line:Ljava/lang/String;
    .restart local v9       #t:Ljava/lang/Throwable;
    :cond_3
    :try_start_5
    instance-of v10, v9, Ljava/lang/RuntimeException;

    if-eqz v10, :cond_4

    .line 360
    check-cast v9, Ljava/lang/RuntimeException;

    .end local v9           #t:Ljava/lang/Throwable;
    throw v9

    .line 362
    .restart local v9       #t:Ljava/lang/Throwable;
    :cond_4
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 366
    .end local v9           #t:Ljava/lang/Throwable;
    :cond_5
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "...preloaded "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " classes in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 371
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 373
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 375
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 378
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 379
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    goto/16 :goto_0
.end method

.method private static preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 5
    .parameter "runtime"
    .parameter "ar"

    .prologue
    .line 601
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 602
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 603
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v3

    sget v4, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    if-le v3, v4, :cond_0

    .line 607
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 608
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 609
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 611
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 615
    .local v2, id:I
    if-eqz v2, :cond_1

    .line 616
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 602
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v2           #id:I
    :cond_2
    return v0
.end method

.method private static preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 7
    .parameter "runtime"
    .parameter "ar"

    .prologue
    .line 624
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 625
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 626
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v4

    sget v5, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    if-le v4, v5, :cond_0

    .line 630
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 631
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 632
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 634
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 638
    .local v3, id:I
    if-eqz v3, :cond_1

    .line 639
    sget-object v4, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 640
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    const v5, -0x40000001

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 641
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preloaded drawable resource #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") that varies with configuration!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 647
    .end local v3           #id:I
    :cond_2
    return v0
.end method

.method private static preloadResources()V
    .locals 10

    .prologue
    .line 565
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    .line 567
    .local v3, runtime:Ldalvik/system/VMRuntime;
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 569
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 570
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 571
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 572
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    .line 574
    const-string v6, "Zygote"

    const-string v7, "Preloading resources..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 577
    .local v4, startTime:J
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 579
    .local v1, ar:Landroid/content/res/TypedArray;
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 580
    .local v0, N:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 581
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 585
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 587
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 588
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 589
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 598
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v4           #startTime:J
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v2

    .line 594
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v6, "Zygote"

    const-string v7, "Failure preloading resources"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    goto :goto_0

    .end local v2           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    throw v6
.end method

.method private static registerZygoteSocket()V
    .locals 6

    .prologue
    .line 174
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-nez v3, :cond_0

    .line 177
    :try_start_0
    const-string v3, "ANDROID_SOCKET_zygote"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, env:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 185
    .local v2, fileDesc:I
    :try_start_1
    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->createFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :cond_0
    return-void

    .line 179
    .end local v2           #fileDesc:I
    :catch_0
    move-exception v1

    .line 180
    .local v1, ex:Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ANDROID_SOCKET_zygote unset or invalid"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 187
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .restart local v2       #fileDesc:I
    :catch_1
    move-exception v1

    .line 188
    .local v1, ex:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error binding to local socket \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static native reopenStdio(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static runForkMode()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 812
    .local v1, peer:Lcom/android/internal/os/ZygoteConnection;
    .local v2, pid:I
    :goto_0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer()Lcom/android/internal/os/ZygoteConnection;

    move-result-object v1

    .line 816
    invoke-static {}, Ldalvik/system/Zygote;->fork()I

    .end local v2           #pid:I
    move-result v2

    .line 818
    .restart local v2       #pid:I
    if-nez v2, :cond_0

    .line 823
    :try_start_0
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    sput-object v5, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    .line 830
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteConnection;->run()V

    .line 838
    return-void

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, ex:Ljava/io/IOException;
    :try_start_1
    const-string v3, "Zygote"

    const-string v4, "Zygote Child: error closing sockets"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    sput-object v5, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    goto :goto_1

    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    sput-object v5, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    throw v3

    .line 832
    :cond_0
    if-lez v2, :cond_1

    .line 833
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    goto :goto_0

    .line 835
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error invoking fork()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static runSelectLoopMode()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 849
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 850
    .local v4, fds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v8, peers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    const/4 v9, 0x4

    new-array v3, v9, [Ljava/io/FileDescriptor;

    .line 853
    .local v3, fdArray:[Ljava/io/FileDescriptor;
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v9}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    const/16 v6, 0xa

    .line 869
    .local v6, loopCount:I
    :cond_0
    :goto_0
    if-gtz v6, :cond_1

    .line 870
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 871
    const/16 v6, 0xa

    .line 878
    :goto_1
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Ljava/io/FileDescriptor;

    move-object v3, v0

    .line 879
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->selectReadable([Ljava/io/FileDescriptor;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 884
    .local v5, index:I
    if-gez v5, :cond_2

    .line 885
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 873
    .end local v5           #index:I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 880
    :catch_0
    move-exception v2

    .line 881
    .local v2, ex:Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 886
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v5       #index:I
    :cond_2
    if-nez v5, :cond_3

    .line 887
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer()Lcom/android/internal/os/ZygoteConnection;

    move-result-object v7

    .line 888
    .local v7, newPeer:Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 892
    .end local v7           #newPeer:Lcom/android/internal/os/ZygoteConnection;
    :cond_3
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v9}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v1

    .line 894
    .local v1, done:Z
    if-eqz v1, :cond_0

    .line 895
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 896
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method static native selectReadable([Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setCapabilities(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setCloseOnExec(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static setEffectiveGroup(I)V
    .locals 4
    .parameter "gid"

    .prologue
    .line 243
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/os/ZygoteInit;->setregid(II)I

    move-result v0

    .line 244
    .local v0, errno:I
    if-eqz v0, :cond_0

    .line 245
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setregid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    return-void
.end method

.method private static setEffectiveUser(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 233
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/os/ZygoteInit;->setreuid(II)I

    move-result v0

    .line 234
    .local v0, errno:I
    if-eqz v0, :cond_0

    .line 235
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setreuid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    return-void
.end method

.method static native setpgid(II)I
.end method

.method static native setregid(II)I
.end method

.method static native setreuid(II)I
.end method

.method private static startSystemServer()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 705
    const/4 v0, 0x7

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "--setuid=1000"

    aput-object v1, v9, v0

    const-string v0, "--setgid=1000"

    aput-object v0, v9, v14

    const/4 v0, 0x2

    const-string v1, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,3001,3002,3003,3004,3005,3006,3007,3008"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "--capabilities=130104352,130104352"

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string v1, "--runtime-init"

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "--nice-name=system_server"

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string v1, "com.android.server.SystemServer"

    aput-object v1, v9, v0

    .line 719
    .local v9, args:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 724
    .local v11, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    new-instance v12, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v12, v9}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    .end local v11           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v12, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_1
    invoke-static {v12}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 726
    invoke-static {v12}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 729
    iget v0, v12, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v1, v12, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v2, v12, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v3, v12, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    const/4 v4, 0x0

    check-cast v4, [[I

    iget-wide v5, v12, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    iget-wide v7, v12, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static/range {v0 .. v8}, Ldalvik/system/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    .line 741
    .local v13, pid:I
    if-nez v13, :cond_0

    .line 742
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 745
    :cond_0
    return v14

    .line 736
    .end local v12           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v13           #pid:I
    .restart local v11       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_0
    move-exception v10

    .line 737
    .local v10, ex:Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 736
    .end local v10           #ex:Ljava/lang/IllegalArgumentException;
    .end local v11           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v12       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_1
    move-exception v10

    move-object v11, v12

    .end local v12           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v11       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_0
.end method
