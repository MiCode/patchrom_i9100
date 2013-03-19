.class Lcom/sec/android/app/camera/Util$BackgroundJob$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Util$BackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Util$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Util$BackgroundJob;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/sec/android/app/camera/Util$BackgroundJob$1;->this$0:Lcom/sec/android/app/camera/Util$BackgroundJob;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/Util$BackgroundJob$1;->this$0:Lcom/sec/android/app/camera/Util$BackgroundJob;

    #getter for: Lcom/sec/android/app/camera/Util$BackgroundJob;->mActivity:Lcom/sec/android/app/camera/MonitoredActivity;
    invoke-static {v0}, Lcom/sec/android/app/camera/Util$BackgroundJob;->access$000(Lcom/sec/android/app/camera/Util$BackgroundJob;)Lcom/sec/android/app/camera/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Util$BackgroundJob$1;->this$0:Lcom/sec/android/app/camera/Util$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MonitoredActivity;->removeLifeCycleListener(Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;)V

    .line 490
    return-void
.end method
