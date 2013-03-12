.class Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Service"
.end annotation


# static fields
.field private static final MSG_ON_GESTURE:I = -0x80000000


# instance fields
.field mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field mCanRetrieveScreenContent:Z

.field mComponentName:Landroid/content/ComponentName;

.field mEventTypes:I

.field mFeedbackType:I

.field public mHandler:Landroid/os/Handler;

.field mId:I

.field mIncludeNotImportantViews:Z

.field mIntent:Landroid/content/Intent;

.field mIsAutomation:Z

.field mIsDefault:Z

.field mNotificationTimeout:J

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mReqeustTouchExplorationMode:Z

.field mRequestTouchExplorationMode:Z

.field final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mService:Landroid/os/IBinder;

.field mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field final mTempBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V
    .locals 6
    .parameter
    .parameter "componentName"
    .parameter "accessibilityServiceInfo"
    .parameter "isAutomation"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1199
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 1138
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 1150
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 1170
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    .line 1175
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    .line 1181
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHanler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHandler:Landroid/os/Handler;

    .line 1200
    invoke-virtual {p3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1201
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2508()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 1202
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    .line 1203
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1204
    iput-boolean p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    .line 1205
    if-nez p4, :cond_1

    .line 1206
    invoke-virtual {p3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCanRetrieveWindowContent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mCanRetrieveScreenContent:Z

    .line 1207
    iget v2, p3, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mReqeustTouchExplorationMode:Z

    .line 1210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    .line 1211
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.client_label"

    const v3, 0x10405b6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1213
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.client_intent"

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1218
    :goto_1
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 1219
    return-void

    :cond_0
    move v0, v1

    .line 1207
    goto :goto_0

    .line 1216
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mCanRetrieveScreenContent:Z

    goto :goto_1
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1131
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyGestureInternal(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1131
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyAccessibilityEventInternal(I)V

    return-void
.end method

.method private expandStatusBar()V
    .locals 5

    .prologue
    .line 1776
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1778
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1780
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expand()V

    .line 1782
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1783
    return-void
.end method

.method private getCompatibilityScale(I)F
    .locals 2
    .parameter "windowId"

    .prologue
    .line 1822
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1823
    .local v0, windowToken:Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowCompatibilityScale(Landroid/os/IBinder;)F

    move-result v1

    return v1
.end method

.method private getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 2
    .parameter "windowId"

    .prologue
    .line 1803
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 1805
    .local v0, wrapper:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    if-eqz v0, :cond_0

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1806
    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    .line 1811
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyAccessibilityEventInternal(I)V
    .locals 6
    .parameter "eventType"

    .prologue
    .line 1684
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1685
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1689
    .local v1, listener:Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v1, :cond_0

    .line 1690
    monitor-exit v4

    .line 1733
    :goto_0
    return-void

    .line 1693
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 1710
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-nez v0, :cond_1

    .line 1711
    monitor-exit v4

    goto :goto_0

    .line 1721
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    .end local v1           #listener:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1714
    .restart local v0       #event:Landroid/view/accessibility/AccessibilityEvent;
    .restart local v1       #listener:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1715
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1716
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    .line 1720
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 1721
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1724
    :try_start_2
    invoke-interface {v1, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1731
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 1718
    :cond_2
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1728
    :catch_0
    move-exception v2

    .line 1729
    .local v2, re:Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error during sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1731
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .end local v2           #re:Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    throw v3
.end method

.method private notifyGestureInternal(I)V
    .locals 5
    .parameter "gestureId"

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1741
    .local v0, listener:Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_0

    .line 1743
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1749
    :cond_0
    :goto_0
    return-void

    .line 1744
    :catch_0
    move-exception v1

    .line 1745
    .local v1, re:Landroid/os/RemoteException;
    const-string v2, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during sending gesture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private openRecents()V
    .locals 6

    .prologue
    .line 1786
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1788
    .local v2, token:J
    const-string v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1791
    .local v1, statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1796
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1797
    return-void

    .line 1792
    :catch_0
    move-exception v0

    .line 1793
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "AccessibilityManagerService"

    const-string v5, "Error toggling recent apps."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resolveAccessibilityWindowId(I)I
    .locals 1
    .parameter "accessibilityWindowId"

    .prologue
    .line 1815
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)I

    move-result p1

    .line 1818
    .end local p1
    :cond_0
    return p1
.end method

.method private sendDownAndUpKeyEvents(I)V
    .locals 18
    .parameter "keyCode"

    .prologue
    .line 1752
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1755
    .local v15, token:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1756
    .local v1, downTime:J
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x101

    const/4 v13, 0x0

    move-wide v3, v1

    move/from16 v6, p1

    invoke-static/range {v1 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v14

    .line 1759
    .local v14, down:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v14, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1761
    invoke-virtual {v14}, Landroid/view/KeyEvent;->recycle()V

    .line 1764
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1765
    .local v3, upTime:J
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x101

    const/4 v13, 0x0

    move/from16 v6, p1

    invoke-static/range {v1 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v17

    .line 1768
    .local v17, up:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1770
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyEvent;->recycle()V

    .line 1772
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1773
    return-void
.end method


# virtual methods
.method public bind()Z
    .locals 3

    .prologue
    .line 1259
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public binderDied()V
    .locals 3

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1628
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryRemoveServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    .line 1631
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$102(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 1634
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->populateEnabledAccessibilityServicesLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1635
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->populateTouchExplorationGrantedAccessibilityServicesLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1637
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->handleAccessibilityEnabledSettingChangedLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1638
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClientsLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1640
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->handleTouchExplorationEnabledSettingChangedLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1641
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1643
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->populateAccessibilityServiceListLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1644
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1646
    :cond_0
    monitor-exit v1

    .line 1647
    return-void

    .line 1646
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1617
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    :goto_0
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 1622
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1623
    return-void

    .line 1618
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)F
    .locals 17
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingTid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1423
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowId(I)I

    move-result v15

    .line 1426
    .local v15, resolvedWindowId:I
    const/4 v1, 0x0

    .line 1427
    .local v1, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1428
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v15}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v14

    .line 1431
    .local v14, permissionGranted:Z
    if-nez v14, :cond_0

    .line 1432
    const/4 v2, 0x0

    monitor-exit v3

    .line 1459
    :goto_0
    return v2

    .line 1434
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    .line 1435
    if-nez v1, :cond_1

    .line 1436
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 1443
    .end local v14           #permissionGranted:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1439
    .restart local v14       #permissionGranted:Z
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/IBinder;

    .line 1440
    .local v16, token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wm/WindowManagerService;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)Z

    .line 1441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 1442
    .local v4, windowLeft:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1443
    .local v5, windowTop:I
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1444
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    :goto_1
    or-int v8, p6, v2

    .line 1446
    .local v8, allFlags:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 1447
    .local v9, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, identityToken:J
    move-wide/from16 v2, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v10, p7

    .line 1449
    :try_start_2
    invoke-interface/range {v1 .. v11}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1457
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1459
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibilityScale(I)F

    move-result v2

    goto :goto_0

    .line 1444
    .end local v8           #allFlags:I
    .end local v9           #interrogatingPid:I
    .end local v12           #identityToken:J
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1452
    .restart local v8       #allFlags:I
    .restart local v9       #interrogatingPid:I
    .restart local v12       #identityToken:J
    :catch_0
    move-exception v2

    .line 1457
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public findAccessibilityNodeInfoByViewId(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F
    .locals 19
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "viewId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingTid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1336
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowId(I)I

    move-result v17

    .line 1339
    .local v17, resolvedWindowId:I
    const/4 v2, 0x0

    .line 1340
    .local v2, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1341
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v16

    .line 1343
    .local v16, permissionGranted:Z
    if-nez v16, :cond_0

    .line 1344
    const/4 v3, 0x0

    monitor-exit v4

    .line 1371
    :goto_0
    return v3

    .line 1346
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    .line 1347
    if-nez v2, :cond_1

    .line 1348
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 1355
    .end local v16           #permissionGranted:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1351
    .restart local v16       #permissionGranted:Z
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/IBinder;

    .line 1352
    .local v18, token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/WindowManagerService;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)Z

    .line 1353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 1354
    .local v6, windowLeft:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 1355
    .local v7, windowTop:I
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1356
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v3, :cond_2

    const/16 v10, 0x8

    .line 1358
    .local v10, flags:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1359
    .local v11, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, identityToken:J
    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    .line 1361
    :try_start_2
    invoke-interface/range {v2 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByViewId(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1369
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1371
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibilityScale(I)F

    move-result v3

    goto :goto_0

    .line 1356
    .end local v10           #flags:I
    .end local v11           #interrogatingPid:I
    .end local v14           #identityToken:J
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 1364
    .restart local v10       #flags:I
    .restart local v11       #interrogatingPid:I
    .restart local v14       #identityToken:J
    :catch_0
    move-exception v3

    .line 1369
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F
    .locals 19
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "text"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingTid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1379
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowId(I)I

    move-result v17

    .line 1382
    .local v17, resolvedWindowId:I
    const/4 v2, 0x0

    .line 1383
    .local v2, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1384
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v16

    .line 1387
    .local v16, permissionGranted:Z
    if-nez v16, :cond_0

    .line 1388
    const/4 v3, 0x0

    monitor-exit v4

    .line 1415
    :goto_0
    return v3

    .line 1390
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    .line 1391
    if-nez v2, :cond_1

    .line 1392
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 1399
    .end local v16           #permissionGranted:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1395
    .restart local v16       #permissionGranted:Z
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/IBinder;

    .line 1396
    .local v18, token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/WindowManagerService;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)Z

    .line 1397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 1398
    .local v6, windowLeft:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 1399
    .local v7, windowTop:I
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1400
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v3, :cond_2

    const/16 v10, 0x8

    .line 1402
    .local v10, flags:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1403
    .local v11, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, identityToken:J
    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    .line 1405
    :try_start_2
    invoke-interface/range {v2 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1413
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1415
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibilityScale(I)F

    move-result v3

    goto :goto_0

    .line 1400
    .end local v10           #flags:I
    .end local v11           #interrogatingPid:I
    .end local v14           #identityToken:J
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 1408
    .restart local v10       #flags:I
    .restart local v11       #interrogatingPid:I
    .restart local v14       #identityToken:J
    :catch_0
    move-exception v3

    .line 1413
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F
    .locals 19
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "focusType"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingTid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1467
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowId(I)I

    move-result v17

    .line 1470
    .local v17, resolvedWindowId:I
    const/4 v2, 0x0

    .line 1471
    .local v2, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1472
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v16

    .line 1475
    .local v16, permissionGranted:Z
    if-nez v16, :cond_0

    .line 1476
    const/4 v3, 0x0

    monitor-exit v4

    .line 1502
    :goto_0
    return v3

    .line 1478
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    .line 1479
    if-nez v2, :cond_1

    .line 1480
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 1487
    .end local v16           #permissionGranted:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1483
    .restart local v16       #permissionGranted:Z
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/IBinder;

    .line 1484
    .local v18, token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/WindowManagerService;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)Z

    .line 1485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 1486
    .local v6, windowLeft:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 1487
    .local v7, windowTop:I
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1488
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v3, :cond_2

    const/16 v10, 0x8

    .line 1490
    .local v10, flags:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1491
    .local v11, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, identityToken:J
    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    .line 1493
    :try_start_2
    invoke-interface/range {v2 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1500
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1502
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibilityScale(I)F

    move-result v3

    goto :goto_0

    .line 1488
    .end local v10           #flags:I
    .end local v11           #interrogatingPid:I
    .end local v14           #identityToken:J
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 1495
    .restart local v10       #flags:I
    .restart local v11       #interrogatingPid:I
    .restart local v14       #identityToken:J
    :catch_0
    move-exception v3

    .line 1500
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F
    .locals 19
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "direction"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingTid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1510
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowId(I)I

    move-result v17

    .line 1513
    .local v17, resolvedWindowId:I
    const/4 v2, 0x0

    .line 1514
    .local v2, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1515
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v16

    .line 1518
    .local v16, permissionGranted:Z
    if-nez v16, :cond_0

    .line 1519
    const/4 v3, 0x0

    monitor-exit v4

    .line 1545
    :goto_0
    return v3

    .line 1521
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    .line 1522
    if-nez v2, :cond_1

    .line 1523
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 1530
    .end local v16           #permissionGranted:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1526
    .restart local v16       #permissionGranted:Z
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/IBinder;

    .line 1527
    .local v18, token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/WindowManagerService;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)Z

    .line 1528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 1529
    .local v6, windowLeft:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mTempBounds:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 1530
    .local v7, windowTop:I
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1531
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v3, :cond_2

    const/16 v10, 0x8

    .line 1533
    .local v10, flags:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1534
    .local v11, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, identityToken:J
    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    .line 1536
    :try_start_2
    invoke-interface/range {v2 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1543
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1545
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getCompatibilityScale(I)F

    move-result v3

    goto :goto_0

    .line 1531
    .end local v10           #flags:I
    .end local v11           #interrogatingPid:I
    .end local v14           #identityToken:J
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 1538
    .restart local v10       #flags:I
    .restart local v11       #interrogatingPid:I
    .restart local v14       #identityToken:J
    :catch_0
    move-exception v3

    .line 1543
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 2

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1297
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v1

    return-object v0

    .line 1298
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConfigured()Z
    .locals 1

    .prologue
    .line 1291
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public linkToOwnDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1607
    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 1655
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1656
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 1660
    .local v0, eventType:I
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1661
    .local v2, newEvent:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    .line 1662
    .local v3, oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1664
    move v4, v0

    .line 1665
    .local v4, what:I
    if-eqz v3, :cond_0

    .line 1666
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1667
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1670
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1671
    .local v1, message:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHandler:Landroid/os/Handler;

    iget-wide v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    invoke-virtual {v5, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1672
    monitor-exit v6

    .line 1673
    return-void

    .line 1672
    .end local v0           #eventType:I
    .end local v1           #message:Landroid/os/Message;
    .end local v2           #newEvent:Landroid/view/accessibility/AccessibilityEvent;
    .end local v3           #oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    .end local v4           #what:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public notifyGesture(I)V
    .locals 3
    .parameter "gestureId"

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mHandler:Landroid/os/Handler;

    const/high16 v1, -0x8000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1737
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "componentName"
    .parameter "service"

    .prologue
    .line 1319
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 1320
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1322
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-interface {v1, p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;I)V

    .line 1323
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryAddServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    invoke-static {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1325
    monitor-exit v2

    .line 1329
    :goto_0
    return-void

    .line 1325
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1326
    :catch_0
    move-exception v0

    .line 1327
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "AccessibilityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while setting Controller for service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "componentName"

    .prologue
    .line 1603
    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 19
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "action"
    .parameter "arguments"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingTid"

    .prologue
    .line 1552
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowId(I)I

    move-result v18

    .line 1553
    .local v18, resolvedWindowId:I
    const/4 v4, 0x0

    .line 1554
    .local v4, connection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1555
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canPerformActionLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;IILandroid/os/Bundle;)Z

    move-result v17

    .line 1557
    .local v17, permissionGranted:Z
    if-nez v17, :cond_0

    .line 1558
    const/4 v5, 0x0

    monitor-exit v6

    .line 1580
    :goto_0
    return v5

    .line 1560
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    .line 1561
    if-nez v4, :cond_1

    .line 1562
    const/4 v5, 0x0

    monitor-exit v6

    goto :goto_0

    .line 1565
    .end local v17           #permissionGranted:Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v17       #permissionGranted:Z
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1566
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    if-eqz v5, :cond_2

    const/16 v11, 0x8

    .line 1568
    .local v11, flags:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1569
    .local v12, interrogatingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .local v15, identityToken:J
    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-wide/from16 v13, p8

    .line 1571
    :try_start_2
    invoke-interface/range {v4 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1578
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1580
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    .line 1566
    .end local v11           #flags:I
    .end local v12           #interrogatingPid:I
    .end local v15           #identityToken:J
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 1573
    .restart local v11       #flags:I
    .restart local v12       #interrogatingPid:I
    .restart local v15       #identityToken:J
    :catch_0
    move-exception v5

    .line 1578
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v5

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public performGlobalAction(I)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 1584
    packed-switch p1, :pswitch_data_0

    .line 1598
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1586
    :pswitch_0
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->sendDownAndUpKeyEvents(I)V

    goto :goto_0

    .line 1589
    :pswitch_1
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->sendDownAndUpKeyEvents(I)V

    goto :goto_0

    .line 1592
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->openRecents()V

    goto :goto_0

    .line 1595
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->expandStatusBar()V

    goto :goto_0

    .line 1584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1222
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    .line 1223
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 1224
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 1225
    .local v0, packageNames:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1228
    :cond_0
    iget-wide v4, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    .line 1229
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    .line 1231
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_2

    .line 1233
    :cond_1
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIncludeNotImportantViews:Z

    .line 1237
    :cond_2
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    .line 1242
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1243
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1244
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    if-eqz v1, :cond_7

    .line 1245
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryEnableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    invoke-static {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 1250
    :cond_3
    :goto_3
    monitor-exit v2

    .line 1251
    return-void

    :cond_4
    move v1, v3

    .line 1229
    goto :goto_0

    :cond_5
    move v1, v3

    .line 1233
    goto :goto_1

    :cond_6
    move v2, v3

    .line 1237
    goto :goto_2

    .line 1247
    :cond_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryDisableTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    invoke-static {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto :goto_3

    .line 1250
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1303
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1307
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1308
    .local v0, oldInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v0, :cond_0

    .line 1309
    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 1310
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 1314
    :goto_0
    monitor-exit v2

    .line 1315
    return-void

    .line 1312
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    goto :goto_0

    .line 1314
    .end local v0           #oldInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unbind()Z
    .locals 2

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1274
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->tryRemoveServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    .line 1275
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1279
    :cond_0
    const/4 v0, 0x1

    .line 1281
    :goto_0
    return v0

    .line 1275
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1281
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unlinkToOwnDeath()V
    .locals 2

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1611
    return-void
.end method
