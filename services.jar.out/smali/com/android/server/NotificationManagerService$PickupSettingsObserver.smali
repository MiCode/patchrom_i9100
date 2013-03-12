.class Lcom/android/server/NotificationManagerService$PickupSettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickupSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1791
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 1792
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1793
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1796
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_pick_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1798
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1800
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->update()V

    .line 1801
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 1805
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->update()V

    .line 1806
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1809
    const-string v3, "STATUSBAR-NotificationService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PickupSettingsObserver - update()   MotionPickUP = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "motion_pick_up"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  MotionEngine = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "motion_engine"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_pick_up"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_engine"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/server/NotificationManagerService$PickupPlayer;->setPickupMotionEnabled(Z)V

    .line 1815
    return-void

    :cond_0
    move v0, v2

    .line 1809
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1812
    goto :goto_2
.end method
