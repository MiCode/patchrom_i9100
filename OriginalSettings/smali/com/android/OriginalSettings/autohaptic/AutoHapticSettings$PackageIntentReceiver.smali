.class Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoHapticSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/autohaptic/AutoHapticSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/autohaptic/AutoHapticSettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 622
    iput-object p2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;->mContext:Landroid/content/Context;

    .line 623
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 639
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, actionStr:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, pkgName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    #getter for: Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings/autohaptic/AutoHapticSettings;->access$000(Lcom/android/settings/autohaptic/AutoHapticSettings;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 643
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;>;"
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 645
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    #calls: Lcom/android/settings/autohaptic/AutoHapticSettings;->getPackageManager()Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/autohaptic/AutoHapticSettings;->access$100(Lcom/android/settings/autohaptic/AutoHapticSettings;)Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 646
    .local v5, pm:Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    const/4 v7, 0x4

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    #calls: Lcom/android/settings/autohaptic/AutoHapticSettings;->filterAdd(Landroid/content/pm/PackageInfo;)V
    invoke-static {v6, v7}, Lcom/android/settings/autohaptic/AutoHapticSettings;->access$200(Lcom/android/settings/autohaptic/AutoHapticSettings;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    iget-object v6, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    #calls: Lcom/android/settings/autohaptic/AutoHapticSettings;->refreshAppListUI()V
    invoke-static {v6}, Lcom/android/settings/autohaptic/AutoHapticSettings;->access$400(Lcom/android/settings/autohaptic/AutoHapticSettings;)V

    .line 663
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v2

    .line 650
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    #calls: Lcom/android/settings/autohaptic/AutoHapticSettings;->initAppList()V
    invoke-static {v6}, Lcom/android/settings/autohaptic/AutoHapticSettings;->access$300(Lcom/android/settings/autohaptic/AutoHapticSettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    iget-object v6, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    #calls: Lcom/android/settings/autohaptic/AutoHapticSettings;->refreshAppListUI()V
    invoke-static {v6}, Lcom/android/settings/autohaptic/AutoHapticSettings;->access$400(Lcom/android/settings/autohaptic/AutoHapticSettings;)V

    goto :goto_0

    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    #calls: Lcom/android/settings/autohaptic/AutoHapticSettings;->refreshAppListUI()V
    invoke-static {v7}, Lcom/android/settings/autohaptic/AutoHapticSettings;->access$400(Lcom/android/settings/autohaptic/AutoHapticSettings;)V

    throw v6

    .line 654
    :cond_1
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 655
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 656
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    .line 657
    .local v1, app:Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;
    iget-object v6, v1, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 658
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 661
    .end local v1           #app:Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    #calls: Lcom/android/settings/autohaptic/AutoHapticSettings;->refreshAppListUI()V
    invoke-static {v6}, Lcom/android/settings/autohaptic/AutoHapticSettings;->access$400(Lcom/android/settings/autohaptic/AutoHapticSettings;)V

    goto :goto_0
.end method
