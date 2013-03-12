.class Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityConnectionWrapper"
.end annotation


# instance fields
.field private final mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field private final mWindowId:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .locals 0
    .parameter
    .parameter "windowId"
    .parameter "connection"

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mWindowId:I

    .line 1038
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 1039
    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->unlinkToDeath()V

    .line 1052
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1053
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mWindowId:I

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 1054
    monitor-exit v1

    .line 1055
    return-void

    .line 1054
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public linkToDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1043
    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1047
    return-void
.end method
