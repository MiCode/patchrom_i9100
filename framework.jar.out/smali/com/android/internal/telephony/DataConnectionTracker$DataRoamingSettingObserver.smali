.class Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;
.super Landroid/database/ContentObserver;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRoamingSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 517
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 518
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    #calls: Lcom/android/internal/telephony/DataConnectionTracker;->handleDataOnRoamingChange()V
    invoke-static {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->access$100(Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 535
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 521
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 522
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 524
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 527
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 528
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 529
    return-void
.end method
