.class Lcom/android/settings/wifi/WifiStatusTest$6;
.super Ljava/lang/Thread;
.source "WifiStatusTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiStatusTest;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusTest;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$updatePingResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest$6;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiStatusTest$6;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiStatusTest$6;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$6;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    #calls: Lcom/android/settings/wifi/WifiStatusTest;->pingHostname()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$2400(Lcom/android/settings/wifi/WifiStatusTest;)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$6;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest$6;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method
