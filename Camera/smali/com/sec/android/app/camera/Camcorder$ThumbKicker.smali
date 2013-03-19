.class Lcom/sec/android/app/camera/Camcorder$ThumbKicker;
.super Ljava/lang/Object;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbKicker"
.end annotation


# static fields
.field private static final THUMB_SUSPEND_KICK_TIME:I = 0x2710


# instance fields
.field private mThumbSuspendKicker:Ljava/lang/Runnable;

.field private mThumbSuspendKickerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 1
    .parameter

    .prologue
    .line 3867
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3869
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    .line 3870
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker$1;-><init>(Lcom/sec/android/app/camera/Camcorder$ThumbKicker;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/Camcorder$ThumbKicker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3867
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/Camcorder$ThumbKicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3867
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public stopKickThumbSuspend()V
    .locals 3

    .prologue
    .line 3887
    const-string v1, "Camcorder"

    const-string v2, "stopKickThumbSuspend"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3889
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3890
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 3891
    return-void
.end method

.method public suspendThumbWork()V
    .locals 5

    .prologue
    .line 3880
    const-string v1, "Camcorder"

    const-string v2, "suspendThumbWork"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3882
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 3883
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3884
    return-void
.end method
