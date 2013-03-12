.class Landroid/media/MediaRouter$Static;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Static"
.end annotation


# instance fields
.field final mAudioService:Landroid/media/IAudioService;

.field mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

.field final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/media/MediaRouter$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaRouter$RouteCategory;",
            ">;"
        }
    .end annotation
.end field

.field final mCurRoutesInfo:Landroid/media/AudioRoutesInfo;

.field mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

.field final mHandler:Landroid/os/Handler;

.field final mResources:Landroid/content/res/Resources;

.field final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

.field mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

.field final mSystemCategory:Landroid/media/MediaRouter$RouteCategory;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "appContext"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    .line 63
    new-instance v1, Landroid/media/AudioRoutesInfo;

    invoke-direct {v1}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mCurRoutesInfo:Landroid/media/AudioRoutesInfo;

    .line 70
    new-instance v1, Landroid/media/MediaRouter$Static$1;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter$Static$1;-><init>(Landroid/media/MediaRouter$Static;)V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    .line 81
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    .line 82
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    .line 84
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 85
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    .line 87
    new-instance v1, Landroid/media/MediaRouter$RouteCategory;

    const v2, 0x104073b

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 90
    return-void
.end method


# virtual methods
.method startMonitoringRoutes(Landroid/content/Context;)V
    .locals 4
    .parameter "appContext"

    .prologue
    .line 94
    new-instance v1, Landroid/media/MediaRouter$RouteInfo;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v1, v2}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    .line 95
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    const v2, 0x1040737

    iput v2, v1, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    .line 96
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 97
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v1}, Landroid/media/MediaRouter;->addRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 99
    new-instance v1, Landroid/media/MediaRouter$VolumeChangeReceiver;

    invoke-direct {v1}, Landroid/media/MediaRouter$VolumeChangeReceiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, newRoutes:Landroid/media/AudioRoutesInfo;
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    :goto_0
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$Static;->updateRoutes(Landroid/media/AudioRoutesInfo;)V

    .line 110
    :cond_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method updateRoutes(Landroid/media/AudioRoutesInfo;)V
    .locals 7
    .parameter "newRoutes"

    .prologue
    const/4 v6, 0x1

    .line 113
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v5, v5, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eq v4, v5, :cond_1

    .line 114
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCurRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v5, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    iput v5, v4, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 116
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    iget v4, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 118
    :cond_0
    const v3, 0x1040738

    .line 126
    .local v3, name:I
    :goto_0
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    iput v3, v4, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    .line 127
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v4}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 132
    .end local v3           #name:I
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v4}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    .local v0, a2dpEnabled:Z
    :goto_1
    iget-object v4, p1, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v5, v5, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 139
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCurRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v5, p1, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    iput-object v5, v4, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 140
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCurRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v4, v4, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    .line 141
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v4, :cond_7

    .line 142
    new-instance v2, Landroid/media/MediaRouter$RouteInfo;

    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v2, v4}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 143
    .local v2, info:Landroid/media/MediaRouter$RouteInfo;
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCurRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v4, v4, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    iput-object v4, v2, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 144
    iput v6, v2, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 145
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iput-object v2, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 146
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v4}, Landroid/media/MediaRouter;->addRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 157
    .end local v2           #info:Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    :goto_2
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v4, :cond_3

    .line 159
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCurRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v4, v4, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCurRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v4, v4, Landroid/media/AudioRoutesInfo;->mMainType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCurRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v4, v4, Landroid/media/AudioRoutesInfo;->mMainType:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_9

    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne v4, v5, :cond_9

    .line 163
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v6, v4}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 169
    :cond_3
    :goto_3
    return-void

    .line 119
    .end local v0           #a2dpEnabled:Z
    :cond_4
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    .line 120
    const v3, 0x1040739

    .restart local v3       #name:I
    goto :goto_0

    .line 121
    .end local v3           #name:I
    :cond_5
    iget v4, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_6

    .line 122
    const v3, 0x104073a

    .restart local v3       #name:I
    goto/16 :goto_0

    .line 124
    .end local v3           #name:I
    :cond_6
    const v3, 0x1040737

    .restart local v3       #name:I
    goto/16 :goto_0

    .line 133
    .end local v3           #name:I
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MediaRouter"

    const-string v5, "Error querying Bluetooth A2DP state"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    const/4 v0, 0x0

    .restart local v0       #a2dpEnabled:Z
    goto/16 :goto_1

    .line 148
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_7
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v5, v5, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    iput-object v5, v4, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 149
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v4}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_2

    .line 151
    :cond_8
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v4, :cond_2

    .line 152
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v4}, Landroid/media/MediaRouter;->removeRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 153
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    goto :goto_2

    .line 164
    :cond_9
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCurRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v4, v4, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mDefaultAudio:Landroid/media/MediaRouter$RouteInfo;

    if-ne v4, v5, :cond_3

    if-eqz v0, :cond_3

    .line 166
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v6, v4}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_3
.end method
