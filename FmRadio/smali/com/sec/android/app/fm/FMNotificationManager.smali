.class public Lcom/sec/android/app/fm/FMNotificationManager;
.super Ljava/lang/Object;
.source "FMNotificationManager.java"


# static fields
.field private static _instance:Lcom/sec/android/app/fm/FMNotificationManager;

.field private static mNotifiedTime:J


# instance fields
.field public isNotified:Z

.field private mContext:Landroid/content/Context;

.field private mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field mRemoteViews:Landroid/widget/RemoteViews;

.field private mUpdatePlayState:Z

.field private status:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/FMNotificationManager;->_instance:Lcom/sec/android/app/fm/FMNotificationManager;

    .line 108
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    .line 40
    iput-object p1, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    .line 43
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v6, "FMPlayer"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 46
    new-instance v5, Landroid/app/Notification;

    const v6, 0x7f020092

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    .line 47
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 48
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    const/16 v6, 0x8

    iput v6, v5, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 49
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    iget-object v6, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 51
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030014

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 54
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.fm.player"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 56
    .local v0, pintent_launch:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.fm.player.tune.prev"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 57
    .local v4, pintent_prev:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.fm.player.on"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 58
    .local v3, pintent_play:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.fm.player.off"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 59
    .local v2, pintent_pause:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.fm.player.tune.next"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 61
    .local v1, pintent_next:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v6, 0x7f070086

    invoke-virtual {v5, v6, v0}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 63
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v6, 0x7f070087

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 64
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v6, 0x7f070087

    iget-object v7, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0086

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0078

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 66
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v6, 0x7f070088

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 67
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v6, 0x7f070088

    iget-object v7, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0086

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0077

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 69
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v6, 0x7f070089

    invoke-virtual {v5, v6, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 70
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v6, 0x7f070089

    iget-object v7, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0086

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0077

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 72
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v6, 0x7f07008a

    invoke-virtual {v5, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 73
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v6, 0x7f07008a

    iget-object v7, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0086

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0079

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 75
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v6, 0x7f07008b

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 77
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    iget-object v6, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 78
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 90
    const-class v1, Lcom/sec/android/app/fm/FMNotificationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/FMNotificationManager;->_instance:Lcom/sec/android/app/fm/FMNotificationManager;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/sec/android/app/fm/FMNotificationManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/FMNotificationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/fm/FMNotificationManager;->_instance:Lcom/sec/android/app/fm/FMNotificationManager;

    .line 93
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/FMNotificationManager;->_instance:Lcom/sec/android/app/fm/FMNotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    return-object v0
.end method

.method public removeNotification()V
    .locals 7

    .prologue
    .line 295
    :try_start_0
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 296
    .local v2, status:Landroid/app/Notification;
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 297
    const/4 v3, 0x0

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 300
    sget-wide v3, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    .line 302
    :cond_0
    sget-wide v3, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 304
    iget-object v3, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 307
    const-wide/16 v3, -0x1

    sput-wide v3, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    .line 315
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.fm.notification.service.stop"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 319
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    .line 320
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "notification removed.."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #status:Landroid/app/Notification;
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 324
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public showNotification()V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method public showNotification(Ljava/lang/String;)V
    .locals 16
    .parameter "textToShow"

    .prologue
    .line 190
    :try_start_0
    sget-wide v8, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    .line 192
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    sget-wide v9, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    .line 193
    const-string v8, " FMNotificationManager "

    const-string v9, " showNotification After RemoteViews when change View Mode"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v9, "FMPlayer"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 197
    new-instance v8, Landroid/app/Notification;

    const v9, 0x7f020092

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    .line 198
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 199
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    const/16 v9, 0x8

    iput v9, v8, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 200
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 202
    new-instance v8, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f030014

    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 204
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.fm.player"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 206
    .local v3, pintent_launch:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.fm.player.tune.prev"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 207
    .local v7, pintent_prev:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.fm.player.on"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 208
    .local v6, pintent_play:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.fm.player.off"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 209
    .local v5, pintent_pause:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.fm.player.tune.next"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 211
    .local v4, pintent_next:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070086

    invoke-virtual {v8, v9, v3}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070087

    invoke-virtual {v8, v9, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070087

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0086

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0078

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070088

    invoke-virtual {v8, v9, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070088

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0086

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0077

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070089

    invoke-virtual {v8, v9, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070089

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0086

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0077

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f07008a

    invoke-virtual {v8, v9, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f07008a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0086

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0079

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f07008b

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 227
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    iput-object v9, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 229
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f07008b

    move-object/from16 v0, p1

    invoke-virtual {v8, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 232
    const-string v8, " FMNotificationManager "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " showNotification After setOnClickPendingIntent mUpdatePlayState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v8, :cond_1

    .line 234
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v9, "FMPlayer"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 238
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070088

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 239
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070089

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    invoke-virtual {v8, v9, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 257
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.fm.notification.service"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "com.android.fm.notification.service.notification"

    const-string v9, "show.notification"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 260
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    .line 261
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "notification done.."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 267
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pintent_launch:Landroid/app/PendingIntent;
    .end local v4           #pintent_next:Landroid/app/PendingIntent;
    .end local v5           #pintent_pause:Landroid/app/PendingIntent;
    .end local v6           #pintent_play:Landroid/app/PendingIntent;
    .end local v7           #pintent_prev:Landroid/app/PendingIntent;
    :goto_1
    return-void

    .line 241
    .restart local v3       #pintent_launch:Landroid/app/PendingIntent;
    .restart local v4       #pintent_next:Landroid/app/PendingIntent;
    .restart local v5       #pintent_pause:Landroid/app/PendingIntent;
    .restart local v6       #pintent_play:Landroid/app/PendingIntent;
    .restart local v7       #pintent_prev:Landroid/app/PendingIntent;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070089

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 242
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070088

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_3
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_4
    const-string v8, " FMNotificationManager "

    const-string v9, " FMPlayerException : mPlayer.isOn() "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    if-eqz v8, :cond_3

    .line 247
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070088

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 248
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070089

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 262
    .end local v1           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    .end local v3           #pintent_launch:Landroid/app/PendingIntent;
    .end local v4           #pintent_next:Landroid/app/PendingIntent;
    .end local v5           #pintent_pause:Landroid/app/PendingIntent;
    .end local v6           #pintent_play:Landroid/app/PendingIntent;
    .end local v7           #pintent_prev:Landroid/app/PendingIntent;
    :catch_1
    move-exception v1

    .line 264
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 265
    :catch_2
    move-exception v8

    goto :goto_1

    .line 250
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    .restart local v3       #pintent_launch:Landroid/app/PendingIntent;
    .restart local v4       #pintent_next:Landroid/app/PendingIntent;
    .restart local v5       #pintent_pause:Landroid/app/PendingIntent;
    .restart local v6       #pintent_play:Landroid/app/PendingIntent;
    .restart local v7       #pintent_prev:Landroid/app/PendingIntent;
    :cond_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070089

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 251
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v9, 0x7f070088

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method public showNotification(Ljava/lang/String;Z)V
    .locals 6
    .parameter "textToShow"
    .parameter "isTickerRequired"

    .prologue
    .line 120
    :try_start_0
    sget-wide v2, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    sget-wide v3, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 127
    const-string v2, " FMNotificationManager "

    const-string v3, " showNotification After RemoteViews "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v3, 0x7f07008b

    invoke-virtual {v2, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 134
    const-string v2, " FMNotificationManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " showNotification After setOnClickPendingIntent mUpdatePlayState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v3, "FMPlayer"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v3, 0x7f070088

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 142
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v3, 0x7f070089

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :goto_0
    if-eqz p2, :cond_2

    .line 164
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    iget-object v3, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0018

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 165
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.notification.service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.fm.notification.service.notification"

    const-string v3, "show.notification"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 178
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    .line 179
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "notification done.."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 185
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 144
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v3, 0x7f070089

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 145
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v3, 0x7f070088

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_3
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_4
    const-string v2, " FMNotificationManager "

    const-string v3, " FMPlayerException : mPlayer.isOn() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    if-eqz v2, :cond_4

    .line 150
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v3, 0x7f070088

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 151
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v3, 0x7f070089

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 180
    .end local v0           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 183
    :catch_2
    move-exception v2

    goto :goto_1

    .line 153
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_4
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v3, 0x7f070089

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 154
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v3, 0x7f070088

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method public updatePlayButtonState(Z)V
    .locals 0
    .parameter "playState"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    .line 106
    return-void
.end method
