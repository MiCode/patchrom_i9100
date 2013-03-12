.class public Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;
.super Ljava/lang/Thread;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    const/high16 v15, 0x1000

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 74
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 75
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v5, addAccountOptions:Landroid/os/Bundle;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v9, addAccountOptionsBundle:Landroid/os/Bundle;
    const-string v2, "com.facebook.auth.login"

    .line 78
    .local v2, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$000(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Landroid/content/Context;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 79
    .local v13, mPendingIntent:Landroid/app/PendingIntent;
    const-string v1, "pendingIntent"

    invoke-virtual {v5, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$000(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 82
    .local v14, pm:Landroid/content/pm/PackageManager;
    const-string v1, "com.facebook.katana"

    const/16 v4, 0x80

    invoke-virtual {v14, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$000(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v12

    .line 104
    .local v12, mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_1
    invoke-interface {v12}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    move-object v9, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :goto_0
    const-string v1, "intent"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    .line 110
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$000(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    .end local v12           #mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 84
    .end local v11           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v10

    .line 86
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$100(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Don\'t install FB app"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v11, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v1, "market://details?id=com.facebook.katana"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    invoke-virtual {v11, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$000(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 105
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11           #intent:Landroid/content/Intent;
    .restart local v12       #mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .restart local v14       #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v10

    .line 106
    .local v10, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$100(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "!!!!! mAccountManagerFuture error !!!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
