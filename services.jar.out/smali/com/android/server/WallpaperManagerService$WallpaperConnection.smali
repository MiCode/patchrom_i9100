.class Lcom/android/server/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mInfo:Landroid/app/WallpaperInfo;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field final mToken:Landroid/os/Binder;

.field mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .parameter
    .parameter "info"
    .parameter "wallpaper"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 219
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 225
    iput-object p2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 226
    iput-object p3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 227
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 0
    .parameter "engine"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 263
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    .line 233
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 234
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v2}, Lcom/android/server/WallpaperManagerService;->access$200(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 241
    :cond_0
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 248
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    .line 249
    const-string v0, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper service gone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-boolean v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-wide v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v2, v2, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v2, :cond_0

    .line 254
    const-string v0, "WallpaperService"

    const-string v2, "Reverting to built-in wallpaper!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZI)V

    .line 258
    :cond_0
    monitor-exit v1

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "name"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
