.class Lcom/android/OriginalSettings/RadioInfo$5;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/RadioInfo;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/RadioInfo;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$updatePingResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/OriginalSettings/RadioInfo$5;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    iput-object p2, p0, Lcom/android/OriginalSettings/RadioInfo$5;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/OriginalSettings/RadioInfo$5;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$5;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #calls: Lcom/android/OriginalSettings/RadioInfo;->pingHostname()V
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$2700(Lcom/android/OriginalSettings/RadioInfo;)V

    .line 746
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$5;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo$5;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 747
    return-void
.end method
