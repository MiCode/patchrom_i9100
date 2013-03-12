.class final Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SecurityPolicy"
.end annotation


# static fields
.field private static final RETRIEVAL_ALLOWING_EVENT_TYPES:I = 0x1b9bf

.field private static final VALID_ACTIONS:I = 0x3fff


# instance fields
.field private mActiveWindowId:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1827
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1827
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1827
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1827
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0
.end method

.method private canDispatchAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1863
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "permission"
    .parameter "function"

    .prologue
    .line 1931
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1939
    :cond_0
    return-void

    .line 1934
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 1935
    .local v0, permissionStatus:I
    if-eqz v0, :cond_0

    .line 1936
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You do not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " required to call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getFocusedWindowId()I
    .locals 5

    .prologue
    .line 1945
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowClientToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1946
    .local v1, token:Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 1947
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    .line 1948
    .local v3, windows:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1949
    .local v2, windowCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1950
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_0

    .line 1951
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1955
    .end local v0           #i:I
    .end local v2           #windowCount:I
    .end local v3           #windows:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    :goto_1
    return v4

    .line 1949
    .restart local v0       #i:I
    .restart local v2       #windowCount:I
    .restart local v3       #windows:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1955
    .end local v0           #i:I
    .end local v2           #windowCount:I
    .end local v3           #windows:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private isActionPermitted(I)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 1927
    and-int/lit16 v0, p1, 0x3fff

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRetrievalAllowingWindow(I)Z
    .locals 1
    .parameter "windowId"

    .prologue
    .line 1923
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    .locals 1
    .parameter "service"
    .parameter "windowId"

    .prologue
    .line 1899
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPerformActionLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;IILandroid/os/Bundle;)Z
    .locals 1
    .parameter "service"
    .parameter "windowId"
    .parameter "action"
    .parameter "arguments"

    .prologue
    .line 1904
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isActionPermitted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 1910
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mCanRetrieveScreenContent:Z

    return v0
.end method

.method public enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 3
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1915
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1916
    const-string v0, "AccessibilityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessibility serivce "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "declare android:canRetrieveWindowContent."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1920
    :cond_0
    return-void
.end method

.method public getRetrievalAllowingWindowLocked()I
    .locals 1

    .prologue
    .line 1895
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0
.end method

.method public updateActiveWindowAndEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1873
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    .line 1874
    .local v1, windowId:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 1875
    .local v0, eventType:I
    sparse-switch v0, :sswitch_data_0

    .line 1889
    :cond_0
    :goto_0
    const v2, 0x1b9bf

    and-int/2addr v2, v0

    if-nez v2, :cond_1

    .line 1890
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 1892
    :cond_1
    return-void

    .line 1877
    :sswitch_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1878
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    goto :goto_0

    .line 1883
    :sswitch_1
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    goto :goto_0

    .line 1886
    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    goto :goto_0

    .line 1875
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_1
        0x400 -> :sswitch_2
    .end sparse-switch
.end method
