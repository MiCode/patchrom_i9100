.class final Landroid/os/StrictMode$5;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1437
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 6

    .prologue
    .line 1439
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1440
    .local v0, now:J
    invoke-static {}, Landroid/os/StrictMode;->access$1500()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1441
    invoke-static {v0, v1}, Landroid/os/StrictMode;->access$1502(J)J

    .line 1442
    invoke-static {}, Landroid/os/StrictMode;->conditionallyCheckInstanceCounts()V

    .line 1444
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
