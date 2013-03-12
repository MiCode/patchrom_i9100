.class Lcom/sec/android/internal/ims/IMSDaemonThread;
.super Ljava/lang/Thread;
.source "IMSService.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3333
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3338
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3340
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3343
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->init2()V

    .line 3345
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3347
    const-string v0, "Exit com.sec.android.ims.IMSDaemonThread"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3348
    return-void
.end method
