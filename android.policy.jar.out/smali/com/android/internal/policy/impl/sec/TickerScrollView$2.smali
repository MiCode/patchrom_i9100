.class Lcom/android/internal/policy/impl/sec/TickerScrollView$2;
.super Ljava/lang/Object;
.source "TickerScrollView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/TickerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;

    .line 166
    .local v3, stockData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->getStockUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 167
    const-string v0, ""

    .line 168
    .local v0, defaultStockUrl:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isMTRDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    const-string v0, "http://m.yahoo.com/finance?.tsrc=metrosfw"

    .line 172
    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 176
    .end local v0           #defaultStockUrl:Ljava/lang/String;
    .local v4, uri:Landroid/net/Uri;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$000(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$200(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Lcom/android/internal/policy/impl/sec/TickerCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 185
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$200(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Lcom/android/internal/policy/impl/sec/TickerCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/policy/impl/sec/TickerCallback;->goToUnlockScreen()V

    .line 187
    :cond_0
    return-void

    .line 171
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v0       #defaultStockUrl:Ljava/lang/String;
    :cond_1
    const-string v0, "http://m.yahoo.com/samsungwi/finance"

    goto :goto_0

    .line 175
    .end local v0           #defaultStockUrl:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;->getStockUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 180
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 181
    .local v1, e:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerScrollView;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->access$100(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dismissKeyguard remoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
