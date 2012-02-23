.class public Landroid/os/Power;
.super Ljava/lang/Object;
.source "Power.java"


# static fields
.field public static final BRIGHTNESS_DIM:I = 0x14

.field public static final BRIGHTNESS_LOW_BATTERY:I = 0xa

.field public static final BRIGHTNESS_OFF:I = 0x0

.field public static final BRIGHTNESS_ON:I = 0xff

.field public static final FULL_WAKE_LOCK:I = 0x2

.field public static final LOW_BATTERY_THRESHOLD:I = 0x5

.field public static final PARTIAL_WAKE_LOCK:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static native SetUnstableMemoryState(Z)I
.end method

.method public static native acquireDVFSLock(II)I
.end method

.method public static native acquireWakeLock(ILjava/lang/String;)V
.end method

.method public static reboot(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const-string/jumbo v2, "shutdownlogger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v0

    .line 114
    .local v0, service:Landroid/app/IShutdownLogger;
    new-instance v1, Landroid/app/ShutdownLoggerManager;

    invoke-direct {v1, v0}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 115
    .local v1, slm:Landroid/app/ShutdownLoggerManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power.reboot(), reason("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 116
    invoke-static {p0}, Landroid/os/Power;->rebootNative(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private static native rebootNative(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native releaseDVFSLock(I)I
.end method

.method public static native releaseWakeLock(Ljava/lang/String;)V
.end method

.method public static native setLastUserActivityTimeout(J)I
.end method

.method public static native setScreenState(Z)I
.end method

.method public static native shutdown()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
