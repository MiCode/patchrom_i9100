.class Lcom/android/server/NotificationManagerService$MotionSettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$MotionSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 1208
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1209
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 1212
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$MotionSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1213
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1215
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$MotionSettingsObserver;->update()V

    .line 1216
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 1219
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$MotionSettingsObserver;->update()V

    .line 1220
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1223
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$MotionSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_overturn"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1225
    .local v0, motionEnabled:Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$MotionSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$MotionSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/NotificationPlayer;->setMotionEnabled(Landroid/content/Context;Z)V

    .line 1226
    return-void
.end method
