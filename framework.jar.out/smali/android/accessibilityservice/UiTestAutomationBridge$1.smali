.class Landroid/accessibilityservice/UiTestAutomationBridge$1;
.super Ljava/lang/Object;
.source "UiTestAutomationBridge.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/UiTestAutomationBridge;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accessibilityservice/UiTestAutomationBridge;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/UiTestAutomationBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 150
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$000(Landroid/accessibilityservice/UiTestAutomationBridge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 152
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    #setter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLastEvent:Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {v0, v2}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$102(Landroid/accessibilityservice/UiTestAutomationBridge;Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    .line 153
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mWaitingForEventDelivery:Z
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$200(Landroid/accessibilityservice/UiTestAutomationBridge;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$000(Landroid/accessibilityservice/UiTestAutomationBridge;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 168
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/UiTestAutomationBridge;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 170
    return-void

    .line 157
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mUnprocessedEventAvailable:Z
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$300(Landroid/accessibilityservice/UiTestAutomationBridge;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    const/4 v2, 0x1

    #setter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mUnprocessedEventAvailable:Z
    invoke-static {v0, v2}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$302(Landroid/accessibilityservice/UiTestAutomationBridge;Z)Z

    .line 159
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$000(Landroid/accessibilityservice/UiTestAutomationBridge;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 163
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$000(Landroid/accessibilityservice/UiTestAutomationBridge;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onGesture(I)Z
    .locals 1
    .parameter "gestureId"

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public onInterrupt()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-virtual {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->onInterrupt()V

    .line 146
    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onSetConnectionId(I)V
    .locals 2
    .parameter "connectionId"

    .prologue
    .line 174
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$000(Landroid/accessibilityservice/UiTestAutomationBridge;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #setter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mConnectionId:I
    invoke-static {v0, p1}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$402(Landroid/accessibilityservice/UiTestAutomationBridge;I)I

    .line 176
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge$1;->this$0:Landroid/accessibilityservice/UiTestAutomationBridge;

    #getter for: Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->access$000(Landroid/accessibilityservice/UiTestAutomationBridge;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
