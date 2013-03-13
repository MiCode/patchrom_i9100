.class Lcom/android/server/AppWidgetService;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppWidgetService$ServiceConnectionProxy;,
        Lcom/android/server/AppWidgetService$AppWidgetId;,
        Lcom/android/server/AppWidgetService$Host;,
        Lcom/android/server/AppWidgetService$Provider;,
        Lcom/android/server/AppWidgetService$Injector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidgetService"


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field final mAppWidgetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppWidgetServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Host;",
            ">;"
        }
    .end annotation
.end field

.field mInstalledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mLocale:Ljava/util/Locale;

.field mNextAppWidgetId:I

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mSafeMode:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    .line 138
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    .line 355
    new-instance v1, Lcom/android/server/AppWidgetService$2;

    invoke-direct {v1, p0}, Lcom/android/server/AppWidgetService$2;-><init>(Lcom/android/server/AppWidgetService;)V

    iput-object v1, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    iput-object p1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    .line 148
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    .line 149
    new-instance v0, Lcom/android/server/AppWidgetServiceImpl;

    invoke-direct {v0, p1, v3}, Lcom/android/server/AppWidgetServiceImpl;-><init>(Landroid/content/Context;I)V

    .line 150
    .local v0, primary:Lcom/android/server/AppWidgetServiceImpl;
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppWidgetService;)Lcom/android/server/AppWidgetServiceImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AppWidgetService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    return-object v0
.end method

.method static getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I
    .locals 4
    .parameter "p"

    .prologue
    .line 300
    iget-object v3, p0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 301
    .local v2, instancesSize:I
    new-array v0, v2, [I

    .line 302
    .local v0, appWidgetIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 303
    iget-object v3, p0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    iget v3, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    aput v3, v0, v1

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_0
    return-object v0
.end method

.method private getImplForUser()Lcom/android/server/AppWidgetServiceImpl;
    .locals 4

    .prologue
    .line 259
    invoke-static {}, Landroid/os/Binder;->getOrigCallingUser()I

    move-result v1

    .line 260
    .local v1, userId:I
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetServiceImpl;

    .line 261
    .local v0, service:Lcom/android/server/AppWidgetServiceImpl;
    if-nez v0, :cond_0

    .line 262
    const-string v2, "AppWidgetService"

    const-string v3, "Unable to find AppWidgetServiceImpl for the current user"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Lcom/android/server/AppWidgetServiceImpl;

    .end local v0           #service:Lcom/android/server/AppWidgetServiceImpl;
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/server/AppWidgetServiceImpl;-><init>(Landroid/content/Context;I)V

    .line 265
    .restart local v0       #service:Lcom/android/server/AppWidgetServiceImpl;
    iget-boolean v2, p0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    invoke-virtual {v0, v2}, Lcom/android/server/AppWidgetServiceImpl;->systemReady(Z)V

    .line 267
    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl;->sendInitialBroadcasts()V

    .line 268
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 271
    :cond_0
    return-object v0
.end method


# virtual methods
.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .locals 1
    .parameter "packageName"
    .parameter "hostId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .locals 1
    .parameter "appWidgetId"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 216
    return-void
.end method

.method public bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "packageName"
    .parameter "appWidgetId"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 1
    .parameter "appWidgetId"
    .parameter "intent"
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 239
    return-void
.end method

.method public deleteAllHosts()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl;->deleteAllHosts()V

    .line 211
    return-void
.end method

.method public deleteAppWidgetId(I)V
    .locals 1
    .parameter "appWidgetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->deleteAppWidgetId(I)V

    .line 201
    return-void
.end method

.method public deleteHost(I)V
    .locals 1
    .parameter "hostId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->deleteHost(I)V

    .line 206
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 349
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl;

    .line 351
    .local v1, service:Lcom/android/server/AppWidgetServiceImpl;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    .end local v1           #service:Lcom/android/server/AppWidgetServiceImpl;
    :cond_0
    return-void
.end method

.method public getAllWidgets(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAllWidgets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 1
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .parameter "appWidgetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetOptions(I)Landroid/os/Bundle;
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetViews(I)Landroid/widget/RemoteViews;
    .locals 1
    .parameter "appWidgetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .locals 1
    .parameter "appWidgetIds"
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->notifyAppWidgetViewDataChanged([II)V

    .line 317
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetServiceImpl;

    .line 249
    .local v0, impl:Lcom/android/server/AppWidgetServiceImpl;
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 251
    :cond_0
    if-nez v0, :cond_1

    .line 252
    invoke-static {p1}, Lcom/android/server/AppWidgetServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl;->onUserRemoved()V

    goto :goto_0
.end method

.method public partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .locals 1
    .parameter "appWidgetIds"
    .parameter "views"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V

    .line 323
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 233
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    .locals 1
    .parameter "host"
    .parameter "packageName"
    .parameter "hostId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 244
    .local p4, updatedViews:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/AppWidgetServiceImpl;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method public stopListening(I)V
    .locals 1
    .parameter "hostId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->stopListening(I)V

    .line 328
    return-void
.end method

.method public systemReady(Z)V
    .locals 8
    .parameter "safeMode"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 154
    iput-boolean p1, p0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    .line 156
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl;

    invoke-virtual {v3, p1}, Lcom/android/server/AppWidgetServiceImpl;->systemReady(Z)V

    invoke-static {p0}, Lcom/android/server/AppWidgetService$Injector;->receiveRestoreFinish(Lcom/android/server/AppWidgetService;)V

    .line 161
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 166
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 176
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v1, sdFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v2, userFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/AppWidgetService$1;

    invoke-direct {v4, p0}, Lcom/android/server/AppWidgetService$1;-><init>(Lcom/android/server/AppWidgetService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    return-void
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .locals 1
    .parameter "appWidgetId"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->unbindRemoteViewsService(ILandroid/content/Intent;)V

    .line 333
    return-void
.end method

.method public updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .locals 1
    .parameter "appWidgetIds"
    .parameter "views"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetIds([ILandroid/widget/RemoteViews;)V

    .line 338
    return-void
.end method

.method public updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "appWidgetId"
    .parameter "options"

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 292
    return-void
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 1
    .parameter "provider"
    .parameter "views"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->getImplForUser()Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 344
    return-void
.end method
