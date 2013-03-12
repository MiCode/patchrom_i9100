.class final Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExitGestureDetectionModeDelayed"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    return-void
.end method


# virtual methods
.method public post()V
    .locals 3

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1285
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1289
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 1294
    return-void
.end method
