.class public Landroid/app/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# static fields
.field public static final DISABLE_BACK:I = 0x400000

.field public static final DISABLE_CAPTURE:I = 0x2000000

.field public static final DISABLE_CLOCK:I = 0x800000

.field public static final DISABLE_EXPAND:I = 0x10000

.field public static final DISABLE_HOME:I = 0x200000

.field public static final DISABLE_MASK:I = 0x7ff0000

.field public static final DISABLE_NAVIGATION:I = 0x7200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final DISABLE_RECENT:I = 0x1000000

.field public static final DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final DISABLE_TRAY:I = 0x4000000

.field public static final NAVIGATION_HINT_BACK_ALT:I = 0x8

.field public static final NAVIGATION_HINT_BACK_NOP:I = 0x1

.field public static final NAVIGATION_HINT_HOME_NOP:I = 0x2

.field public static final NAVIGATION_HINT_RECENT_NOP:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    .line 83
    iput-object p1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private declared-synchronized getService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 88
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 90
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 91
    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public collapse()V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 134
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapse()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    return-void

    .line 137
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 139
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public disable(I)V
    .locals 4
    .parameter "what"

    .prologue
    .line 103
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 104
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 105
    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    return-void

    .line 107
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 109
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public expand()V
    .locals 3

    .prologue
    .line 118
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 119
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expand()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    return-void

    .line 122
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 124
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public hideCallView()V
    .locals 3

    .prologue
    .line 209
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 210
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 211
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideCallView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    return-void

    .line 213
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 215
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 3
    .parameter "slot"

    .prologue
    .line 158
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 159
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->removeIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    return-void

    .line 162
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 164
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .parameter "slot"
    .parameter "iconId"
    .parameter "iconLevel"
    .parameter "contentDescription"

    .prologue
    .line 145
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 146
    .local v0, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    return-void

    .line 150
    .end local v0           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v6

    .line 152
    .local v6, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 3
    .parameter "slot"
    .parameter "visible"

    .prologue
    .line 170
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 171
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 172
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_0
    return-void

    .line 174
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 176
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setMaxBrightness(I)V
    .locals 3
    .parameter "maxLevel"

    .prologue
    .line 183
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 184
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 185
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setMaxBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    return-void

    .line 187
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 189
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public showCallView()V
    .locals 3

    .prologue
    .line 197
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 198
    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 199
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->showCallView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    return-void

    .line 201
    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 203
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "what"
    .parameter "action"
    .parameter "ext"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, svc:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1           #svc:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
